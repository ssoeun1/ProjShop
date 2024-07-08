package com.ecom6.utils;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.imageio.IIOImage;
import javax.imageio.ImageIO;
import javax.imageio.ImageWriteParam;
import javax.imageio.ImageWriter;
import javax.imageio.stream.FileImageOutputStream;

import com.luciad.imageio.webp.WebPWriteParam;

public class WebpUtils {
	public static void imageFileToWebpImageFile(File inputFile, File webpOutputFile) throws IOException {
		FileInputStream fis = new FileInputStream(inputFile);
		BufferedImage image = ImageIO.read(fis);

		ImageWriter writer = ImageIO.getImageWritersByMIMEType("image/webp").next();

		WebPWriteParam writeParam = new WebPWriteParam(writer.getLocale());
		// Notify encoder to consider WebPWriteParams
		writeParam.setCompressionMode(ImageWriteParam.MODE_EXPLICIT);
		// Set lossless compression
		writeParam.setCompressionType(writeParam.getCompressionTypes()[WebPWriteParam.LOSSY_COMPRESSION]);
		// LOSSLESS_COMPRESSION has a error from process of converting a monochromatic PNG file, mainly without much color, to webp
		// Save the image
		writer.setOutput(new FileImageOutputStream(webpOutputFile));
		writer.write(null, new IIOImage(image, null, null), writeParam);
	}
}
