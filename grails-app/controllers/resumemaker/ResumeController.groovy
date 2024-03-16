package resumemaker


import org.apache.poi.util.Units
import org.apache.poi.xwpf.usermodel.ParagraphAlignment
import org.apache.poi.xwpf.usermodel.PositionInParagraph
import org.apache.poi.xwpf.usermodel.TextSegment
import org.apache.poi.xwpf.usermodel.XWPFDocument
import org.apache.poi.xwpf.usermodel.XWPFParagraph
import org.apache.poi.xwpf.usermodel.XWPFPicture
import org.apache.poi.xwpf.usermodel.XWPFRun
import fr.opensagres.poi.xwpf.converter.pdf.PdfConverter
import org.apache.poi.xwpf.usermodel.XWPFTable
import org.apache.poi.xwpf.usermodel.XWPFTableRow
import org.apache.xmlbeans.XmlCursor
import org.docx4j.Docx4J

import org.docx4j.openpackaging.exceptions.Docx4JException
import org.docx4j.openpackaging.packages.WordprocessingMLPackage
import org.docx4j.wml.CTAltChunk
import org.grails.web.json.JSONObject
import org.jodconverter.local.JodConverter
import org.jodconverter.local.office.LocalOfficeManager
import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.Paths
import java.text.SimpleDateFormat

class ResumeController {
    def index() {

    }

    def generateResumePdf() {
        try {
            // Fetch profile data from the database
            def currentUserEmail = session.getAttribute("email")
            def profile = Profile.findByEmail(currentUserEmail)

            if (profile) {
                // Load the Word template
                def templatePath = "C:/projects/resumemaker/CV/template3.docx"
                FileInputStream fis = new FileInputStream(templatePath)
                XWPFDocument doc = new XWPFDocument(fis)
                println(doc.getParagraphs())

                // Replace placeholders with actual data
                try {
                    doc.getParagraphs().each { XWPFParagraph paragraph ->

                        println(paragraph)
                        println(paragraph.getText())
                        println(paragraph.getRuns())
                        paragraph.getRuns().each { XWPFRun run ->


                            def text = run.getText(0)

                            if (text != null && text.contains("[FULLNAME]")) {
                                run.setText(text.replace("[FULLNAME]", profile.fullName), 0)
                            }
                            if (text != null && text.contains("[ADDRESS]")) {
                                run.setText(text.replace("[ADDRESS]", profile.address), 0)
                            }
                            if (text != null && text.contains("[EMAIL]")) {
                                run.setText(text.replace("[EMAIL]", profile.email), 0)
                            }
                            if (text != null && text.contains("[CONTACTNUMBER]")) {
                                run.setText(text.replace("[CONTACTNUMBER]", profile.contactNumber), 0)
                            }
                            if (text != null && text.contains("[PHOTO]")) {
                                // Get the image file name
                                String imageName = profile.profilePhoto
                                def imagePath = new File(AppConstants.PROFILEPATH + imageName)
                                FileInputStream imagestream = new FileInputStream(imagePath)

                                try {

                                    // Add the image to the document
                                    int imgWidth = 100; // Specify image width in EMUs (English Metric Units)
                                    int imgHeight = 100; // Specify image height in EMUs (English Metric Units)
                                    run.addPicture(imagestream, XWPFDocument.PICTURE_TYPE_JPEG, "profile photo", Units.toEMU(imgWidth), Units.toEMU(imgHeight))
                                    run.getCTR().addNewDrawing().addNewInline()


                                    paragraph.setAlignment(ParagraphAlignment.RIGHT)

                                    // Close the input stream
                                    imagestream.close()

                                    // Clear the text after adding the image
                                    run.setText(text.replace("[PHOTO]",''),0)
                                } catch (Exception ex) {
                                    System.out.println("An exception occurred: " + ex.getMessage());
                                }
                                finally {
                                    imagestream.close();
                                }
                            }

                            if (text != null && text.contains("[SUMMARY]")) {
                                run.setText(text.replace("[SUMMARY]", profile.summary), 0)
                            }

                            if (text != null && text.contains("[EDU]")) {
                                // Remove the existing placeholder

                                TextSegment textSegment = paragraph.searchText("[EDU]", new PositionInParagraph())
                                if (textSegment != null) {
                                    XmlCursor cursor = paragraph.getCTP().newCursor()
                                    XWPFTable table = doc.insertNewTbl(cursor)
                                    run.setText(text.replace("[EDU]", ''), 0)

//                                    XWPFTable table = doc.createTable(profile.educations.size() + 1, 5);

                                    // Assuming 5 columns

                                    // Set the table header
                                    XWPFTableRow headerRow = table.getRow(0);
                                    headerRow.getCell(0).setText("Study Program");
                                    headerRow.createCell().setText("Institution");
                                    headerRow.createCell().setText("Start Date");
                                    headerRow.createCell().setText("End Date");
                                    headerRow.createCell().setText("Grade");

                                    SimpleDateFormat dateFormat = new SimpleDateFormat("MMM dd, yyyy");
                                    // Define date format

                                    // Populate the table with education information
                                    for (int i = 0; i < profile.educations.size(); i++) {
                                        Education education = profile.educations.get(i);
                                        XWPFTableRow row = table.createRow(); // Skip header row
                                        row.getCell(0).setText(education.studyProgramName);
                                        row.getCell(1).setText(education.institution);
                                        row.getCell(2).setText(dateFormat.format(education.startDate));
                                        row.getCell(3).setText(dateFormat.format(education.endDate));
                                        row.getCell(4).setText(education.grade);
                                    }
                                }

                            }
                            if (text != null && text.contains("[EXP]")) {
                                StringBuilder experienceText = new StringBuilder();
                                SimpleDateFormat dateFormat = new SimpleDateFormat("MMM yyyy"); // Define date format
                                int i = 0;
                                for (Experience experience : profile.experiences) {
                                    run.setText(text.replace("[EXP]", "Job Title: " + experience.jobTitle), i++);
                                    run.addBreak();
                                    run.setText("Company Name: " + experience.companyName, i++);
                                    run.addBreak();
                                    run.setText("Start Date: " + dateFormat.format(experience.startDate), i++); // Format start date
                                    run.addBreak();
                                    run.setText("End Date: " + dateFormat.format(experience.endDate), i++); // Format end date
                                    run.addBreak();
                                    run.setText("Location: " + experience.location, i++);
                                    run.addBreak();
                                    run.setText("Responsibilities: " + experience.responsibilities, i++);
                                    run.addBreak();
                                    run.addBreak();
                                }
                            }

                            if (text != null && text.contains("[SKILL]")) {
                                StringBuilder skillsText = new StringBuilder();
                                int i = 0;
                                for (Skill skill : profile.skills) {
                                    run.setText(text.replace("[SKILL]", "Name: " + skill.name), i++);
                                    run.addBreak();
                                    run.setText("Proficiency Level: " + skill.proficiencyLevel, i++);
                                    run.addBreak();
                                    run.addBreak();
                                }
                            }

                            if (text != null && text.contains("[PROJECTDETAILS]")) {

                                StringBuilder projectText = new StringBuilder();
                                SimpleDateFormat dateFormat = new SimpleDateFormat("MMM yyyy");
                                // Define date format
                                int  i=0;
                                for (Project project : profile.projects) {
                                    run.setText(text.replace("[PROJECTDETAILS]", "Title:" + project.title), i++);
                                    run.addBreak()
                                    run.setText("Description:" + project.description, i++)
                                    run.addBreak()
                                    run.setText("Role:" + project.role, i++)
                                    run.addBreak()
                                    run.setText("Start Date:" +dateFormat.format(project.startDate), i++)
                                    run.addBreak()
                                    run.setText("End Date:" + dateFormat.format(project.endDate), i++)
                                    run.addBreak()
                                    run.setText("Technologies Used:" + project.technologiesUsed, i++)
                                    run.addBreak()
                                    run.addBreak()
                                    run.addBreak()
                                    // Customize this format based on your requirements
//                                    projectText.append("Title: ").append(project.title).append("</br>")
//                                            .append("Description: ").append(project.description).append("</br>")
//                                            .append("Role: ").append(project.role).append("</br>")
//                                            .append("Start Date: ").append(dateFormat.format(project.startDate)).append("</br>")
//                                            .append("End Date: ").append(dateFormat.format(project.endDate)).append("</br>")
//                                            .append("Technologies Used: ").append(project.technologiesUsed).append("</br></br>");
                                }

                                // Set the formatted text
//                                run.setText(text.replace("[PROJECTDETAILS]", projectText.toString()), 0);

                            }



                        }
                    }
                } catch (Exception ex) {
                    println(ex)
                }
                finally {
                    fis.close()
                }
                // Generate Word document
                def outputFilePath = "C:/projects/resumemaker/generatedcvdocx/resume_${System.currentTimeMillis()}.docx"
                def outputStream = new FileOutputStream(new File(outputFilePath))
                doc.write(outputStream)
                outputStream.close()

                // Convert Word to PDF (Replace this with actual conversion logic)
                def pdfOutputPath = "C:/projects/resumemaker/generatedcvpdf/resume_${System.currentTimeMillis()}.pdf"
                // Convert logic here
                ConvertToPDF(outputFilePath, pdfOutputPath)


                // Serve the PDF for download
                response.setContentType("application/pdf")
                response.setHeader("Content-disposition", "attachment; filename=resume.pdf")
                response.outputStream << new FileInputStream(new File(pdfOutputPath)).bytes

                // Optionally, delete the generated files after serving
                new File(outputFilePath).delete()
                new File(pdfOutputPath).delete()
            } else {
                response.status = 400 // Bad request
            }
        } catch (Exception ex) {
            println "An exception occurred: ${ex.message}"
            response.status = 500 // Internal server error
        }
    }

    public void ConvertToPDF(String docPath, String pdfOutputPath) {
        try {
            // Load the Word document using Apache POI
            InputStream docInputStream = new FileInputStream(new File(docPath));
            XWPFDocument document = new XWPFDocument(docInputStream);

            // Get paragraphs from the document
            List<XWPFParagraph> paragraphs = document.getParagraphs();

            // Iterate through paragraphs and process them
            for (XWPFParagraph paragraph : paragraphs) {
                // Get the text of each paragraph
                String paragraphText = paragraph.getText();
                // Do something with the paragraph text, for example, print it
                System.out.println(paragraphText);
            }

            // Close the document input stream
            docInputStream.close();

            // Convert DOCX to PDF using Docx4j

            // Load the document processed by Apache POI into Docx4j
            InputStream is = new FileInputStream(new File(docPath));
            WordprocessingMLPackage wordMLPackage = Docx4J.load(is);

            // Convert AltChunks
            wordMLPackage.getMainDocumentPart().convertAltChunks();

            // Save the DOCX file
            wordMLPackage.save(new File(docPath));

            // Convert DOCX to PDF using JodConverter
            LocalOfficeManager officeManager = LocalOfficeManager.builder().officeHome("C:/Program Files/LibreOffice").install().build();
            officeManager.start();
            JodConverter.convert(new File(docPath)).to(new File(pdfOutputPath)).execute()
            officeManager.stop();

            Path outputPath = Paths.get(pdfOutputPath);

// Check if the path exists and if it's a directory
            if (!Files.exists(outputPath) || !Files.isDirectory(outputPath)) {
                try {
                    // Create the directory if it does not exist
                    Files.createDirectories(outputPath);
                } catch (IOException e) {
                    System.err.println("Error creating directory: " + e.getMessage());
                    // Handle the exception appropriately
                }
            }

        } catch (FileNotFoundException e) {
            System.err.println("File not found: " + e.getMessage());
        } catch (IOException e) {
            System.err.println("Error reading document: " + e.getMessage());
        } catch (Docx4JException e) {
            System.err.println("Error converting document to PDF: " + e.getMessage());
        }
    }

}













