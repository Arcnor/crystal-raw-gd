# WARNING: Automatically generated using Arcnor's famous NativeBindingsGenerator. Do not modify manually!

@[Link("GD")]
lib LibGD
	
	# Types & Classes #
	
	struct GDIOCtx
		getC : (GDIOCtx*) -> Int32
		getBuf : (GDIOCtx*, Void*, Int32) -> Int32
		putC : (GDIOCtx*, Int32) -> Void
		putBuf : (GDIOCtx*, Void*, Int32) -> Int32
		seek : (GDIOCtx*, Int32) -> Int32
		tell : (GDIOCtx*) -> Int64
		gd_free : (GDIOCtx*) -> Void
		data : Void*
	end
	
	alias GDIOCtxPtr = GDIOCtx*
	enum GDPaletteQuantizationMethod
		GD_QUANT_DEFAULT = 0,
		GD_QUANT_JQUANT = 1,
		GD_QUANT_NEUQUANT = 2,
		GD_QUANT_LIQ = 3
	end
	
	enum GDInterpolationMethod
		GD_DEFAULT = 0,
		GD_BELL,
		GD_BESSEL,
		GD_BILINEAR_FIXED,
		GD_BICUBIC,
		GD_BICUBIC_FIXED,
		GD_BLACKMAN,
		GD_BOX,
		GD_BSPLINE,
		GD_CATMULLROM,
		GD_GAUSSIAN,
		GD_GENERALIZED_CUBIC,
		GD_HERMITE,
		GD_HAMMING,
		GD_HANNING,
		GD_MITCHELL,
		GD_NEAREST_NEIGHBOUR,
		GD_POWER,
		GD_QUADRATIC,
		GD_SINC,
		GD_TRIANGLE,
		GD_WEIGHTED4,
		GD_METHOD_COUNT = 21
	end
	
	alias INTERPOLATION_method = (Float64) -> Float64
	struct GDImageStruct
		pixels : UInt8**
		sx : Int32
		sy : Int32
		colorsTotal : Int32
		red : Int32[256]
		green : Int32[256]
		blue : Int32[256]
		open : Int32[256]
		transparent : Int32
		polyInts : Int32*
		polyAllocated : Int32
		brush : GDImageStruct*
		tile : GDImageStruct*
		brushColorMap : Int32[256]
		tileColorMap : Int32[256]
		styleLength : Int32
		stylePos : Int32
		style : Int32*
		interlace : Int32
		thick : Int32
		alpha : Int32[256]
		trueColor : Int32
		tpixels : Int32**
		alphaBlendingFlag : Int32
		saveAlphaFlag : Int32
		aa : Int32
		aa_color : Int32
		aa_dont_blend : Int32
		cx1 : Int32
		cy1 : Int32
		cx2 : Int32
		cy2 : Int32
		res_x : UInt32
		res_y : UInt32
		paletteQuantizationMethod : Int32
		paletteQuantizationSpeed : Int32
		paletteQuantizationMinQuality : Int32
		paletteQuantizationMaxQuality : Int32
		interpolation_id : GDInterpolationMethod
		interpolation : INTERPOLATION_method
	end
	
	alias GDImage = GDImageStruct
	alias GDImagePtr = GDImage*
	struct GDPointF
		x : Float64
		y : Float64
	end
	
	alias GDPointFPtr = GDPointF*
	struct GDFont
		nchars : Int32
		offset : Int32
		w : Int32
		h : Int32
		data : UInt8*
	end
	
	alias GDFontPtr = GDFont*
	alias GDErrorMethod = (Int32, UInt8*, Void*) -> Void
	struct GDSource
		source : (Void*, UInt8*, Int32) -> Int32
		context : Void*
	end
	
	alias GDSourcePtr = GDSource*
	struct GDFTStringExtra
		flags : Int32
		linespacing : Float64
		charmap : Int32
		hdpi : Int32
		vdpi : Int32
		xshow : UInt8*
		fontpath : UInt8*
	end
	
	alias GDFTStringExtraPtr = GDFTStringExtra*
	struct GDPoint
		x : Int32
		y : Int32
	end
	
	alias GDPointPtr = GDPoint*
	struct GDRect
		x : Int32
		y : Int32
		width : Int32
		height : Int32
	end
	
	alias GDRectPtr = GDRect*
	alias GDCallbackImageColor = (GDImagePtr, Int32) -> Int32
	struct GDSink
		sink : (Void*, UInt8*, Int32) -> Int32
		context : Void*
	end
	
	alias GDSinkPtr = GDSink*
	enum GDPixelateMode
		GD_PIXELATE_UPPERLEFT,
		GD_PIXELATE_AVERAGE
	end
	
	struct GDScatter
		sub : Int32
		plus : Int32
		num_colors : UInt32
		colors : Int32*
		seed : UInt32
	end
	
	alias GDScatterPtr = GDScatter*
	enum GDCropMode
		GD_CROP_DEFAULT = 0,
		GD_CROP_TRANSPARENT,
		GD_CROP_BLACK,
		GD_CROP_WHITE,
		GD_CROP_SIDES,
		GD_CROP_THRESHOLD
	end
	
	enum GDAffineStandardMatrix
		GD_AFFINE_TRANSLATE = 0,
		GD_AFFINE_SCALE,
		GD_AFFINE_ROTATE,
		GD_AFFINE_SHEAR_HORIZONTAL,
		GD_AFFINE_SHEAR_VERTICAL
	end
	
	enum UNNAMED0
		GDDisposalUnknown,
		GDDisposalNone,
		GDDisposalRestoreBackground,
		GDDisposalRestorePrevious
	end
	
	# Functions #
	
	fun putword = Putword(w : Int32, ctx : GDIOCtx*) : Void
	fun putchar = Putchar(c : Int32, ctx : GDIOCtx*) : Void
	fun gdPutC(c : UInt8, ctx : GDIOCtx*) : Void
	fun gdPutBuf(noName : Void*, noName : Int32, noName : GDIOCtx*) : Int32
	fun gdPutWord(w : Int32, ctx : GDIOCtx*) : Void
	fun gdPutInt(w : Int32, ctx : GDIOCtx*) : Void
	fun gdGetC(ctx : GDIOCtx*) : Int32
	fun gdGetBuf(noName : Void*, noName : Int32, noName : GDIOCtx*) : Int32
	fun gdGetByte(result : Int32*, ctx : GDIOCtx*) : Int32
	fun gdGetWord(result : Int32*, ctx : GDIOCtx*) : Int32
	fun gdGetWordLSB(result : Int16*, ctx : GDIOCtx*) : Int32
	fun gdGetInt(result : Int32*, ctx : GDIOCtx*) : Int32
	fun gdGetIntLSB(result : Int32*, ctx : GDIOCtx*) : Int32
	fun gdSeek(ctx : GDIOCtx*, offset : Int32) : Int32
	fun gdTell(ctx : GDIOCtx*) : Int64
	fun gdAlphaBlend(dest : Int32, src : Int32) : Int32
	fun gdSetErrorMethod(noName : GDErrorMethod) : Void
	fun gdClearErrorMethod() : Void
	fun gdImageCreate(sx : Int32, sy : Int32) : GDImagePtr
	fun gdImageCreateTrueColor(sx : Int32, sy : Int32) : GDImagePtr
	fun gdImageCreateFromPng(fd : LibC::File) : GDImagePtr
	fun gdImageCreateFromPngCtx(in : GDIOCtxPtr) : GDImagePtr
	fun gdImageCreateFromPngPtr(size : Int32, data : Void*) : GDImagePtr
	fun gdImageCreateFromGif(fd : LibC::File) : GDImagePtr
	fun gdImageCreateFromGifCtx(in : GDIOCtxPtr) : GDImagePtr
	fun gdImageCreateFromGifPtr(size : Int32, data : Void*) : GDImagePtr
	fun gdImageCreateFromWBMP(inFile : LibC::File) : GDImagePtr
	fun gdImageCreateFromWBMPCtx(infile : GDIOCtx*) : GDImagePtr
	fun gdImageCreateFromWBMPPtr(size : Int32, data : Void*) : GDImagePtr
	fun gdImageCreateFromJpeg(infile : LibC::File) : GDImagePtr
	fun gdImageCreateFromJpegEx(infile : LibC::File, ignore_warning : Int32) : GDImagePtr
	fun gdImageCreateFromJpegCtx(infile : GDIOCtx*) : GDImagePtr
	fun gdImageCreateFromJpegCtxEx(infile : GDIOCtx*, ignore_warning : Int32) : GDImagePtr
	fun gdImageCreateFromJpegPtr(size : Int32, data : Void*) : GDImagePtr
	fun gdImageCreateFromJpegPtrEx(size : Int32, data : Void*, ignore_warning : Int32) : GDImagePtr
	fun gdImageCreateFromWebp(inFile : LibC::File) : GDImagePtr
	fun gdImageCreateFromWebpPtr(size : Int32, data : Void*) : GDImagePtr
	fun gdImageCreateFromWebpCtx(infile : GDIOCtx*) : GDImagePtr
	fun gdImageCreateFromTiff(inFile : LibC::File) : GDImagePtr
	fun gdImageCreateFromTiffCtx(infile : GDIOCtx*) : GDImagePtr
	fun gdImageCreateFromTiffPtr(size : Int32, data : Void*) : GDImagePtr
	fun gdImageCreateFromTga(fp : LibC::File) : GDImagePtr
	fun gdImageCreateFromTgaCtx(ctx : GDIOCtx*) : GDImagePtr
	fun gdImageCreateFromTgaPtr(size : Int32, data : Void*) : GDImagePtr
	fun gdImageCreateFromBmp(inFile : LibC::File) : GDImagePtr
	fun gdImageCreateFromBmpPtr(size : Int32, data : Void*) : GDImagePtr
	fun gdImageCreateFromBmpCtx(infile : GDIOCtxPtr) : GDImagePtr
	fun gdImageCreateFromPngSource(in : GDSourcePtr) : GDImagePtr
	fun gdImageCreateFromGd(in : LibC::File) : GDImagePtr
	fun gdImageCreateFromGdCtx(in : GDIOCtxPtr) : GDImagePtr
	fun gdImageCreateFromGdPtr(size : Int32, data : Void*) : GDImagePtr
	fun gdImageCreateFromGd2(in : LibC::File) : GDImagePtr
	fun gdImageCreateFromGd2Ctx(in : GDIOCtxPtr) : GDImagePtr
	fun gdImageCreateFromGd2Ptr(size : Int32, data : Void*) : GDImagePtr
	fun gdImageCreateFromGd2Part(in : LibC::File, srcx : Int32, srcy : Int32, w : Int32, h : Int32) : GDImagePtr
	fun gdImageCreateFromGd2PartCtx(in : GDIOCtxPtr, srcx : Int32, srcy : Int32, w : Int32, h : Int32) : GDImagePtr
	fun gdImageCreateFromGd2PartPtr(size : Int32, data : Void*, srcx : Int32, srcy : Int32, w : Int32, h : Int32) : GDImagePtr
	fun gdImageCreateFromXbm(in : LibC::File) : GDImagePtr
	fun gdImageXbmCtx(image : GDImagePtr, file_name : UInt8*, fg : Int32, out : GDIOCtx*) : Void
	fun gdImageCreateFromXpm(filename : UInt8*) : GDImagePtr
	fun gdImageDestroy(im : GDImagePtr) : Void
	fun gdImageSetPixel(im : GDImagePtr, x : Int32, y : Int32, color : Int32) : Void
	fun gdImageGetPixel(im : GDImagePtr, x : Int32, y : Int32) : Int32
	fun gdImageGetTrueColorPixel(im : GDImagePtr, x : Int32, y : Int32) : Int32
	fun gdImageAABlend(im : GDImagePtr) : Void
	fun gdImageLine(im : GDImagePtr, x1 : Int32, y1 : Int32, x2 : Int32, y2 : Int32, color : Int32) : Void
	fun gdImageDashedLine(im : GDImagePtr, x1 : Int32, y1 : Int32, x2 : Int32, y2 : Int32, color : Int32) : Void
	fun gdImageRectangle(im : GDImagePtr, x1 : Int32, y1 : Int32, x2 : Int32, y2 : Int32, color : Int32) : Void
	fun gdImageFilledRectangle(im : GDImagePtr, x1 : Int32, y1 : Int32, x2 : Int32, y2 : Int32, color : Int32) : Void
	fun gdImageSetClip(im : GDImagePtr, x1 : Int32, y1 : Int32, x2 : Int32, y2 : Int32) : Void
	fun gdImageGetClip(im : GDImagePtr, x1P : Int32*, y1P : Int32*, x2P : Int32*, y2P : Int32*) : Void
	fun gdImageSetResolution(im : GDImagePtr, res_x : UInt32, res_y : UInt32) : Void
	fun gdImageBoundsSafe(im : GDImagePtr, x : Int32, y : Int32) : Int32
	fun gdImageChar(im : GDImagePtr, f : GDFontPtr, x : Int32, y : Int32, c : Int32, color : Int32) : Void
	fun gdImageCharUp(im : GDImagePtr, f : GDFontPtr, x : Int32, y : Int32, c : Int32, color : Int32) : Void
	fun gdImageString(im : GDImagePtr, f : GDFontPtr, x : Int32, y : Int32, s : UInt8*, color : Int32) : Void
	fun gdImageStringUp(im : GDImagePtr, f : GDFontPtr, x : Int32, y : Int32, s : UInt8*, color : Int32) : Void
	fun gdImageString16(im : GDImagePtr, f : GDFontPtr, x : Int32, y : Int32, s : UInt16*, color : Int32) : Void
	fun gdImageStringUp16(im : GDImagePtr, f : GDFontPtr, x : Int32, y : Int32, s : UInt16*, color : Int32) : Void
	fun gdFontCacheSetup() : Int32
	fun gdFontCacheShutdown() : Void
	fun gdFreeFontCache() : Void
	fun gdImageStringTTF(im : GDImage*, brect : Int32*, fg : Int32, fontlist : UInt8*, ptsize : Float64, angle : Float64, x : Int32, y : Int32, string : UInt8*) : UInt8*
	fun gdImageStringFT(im : GDImage*, brect : Int32*, fg : Int32, fontlist : UInt8*, ptsize : Float64, angle : Float64, x : Int32, y : Int32, string : UInt8*) : UInt8*
	fun gdFTUseFontConfig(flag : Int32) : Int32
	fun gdImageStringFTEx(im : GDImage*, brect : Int32*, fg : Int32, fontlist : UInt8*, ptsize : Float64, angle : Float64, x : Int32, y : Int32, string : UInt8*, strex : GDFTStringExtraPtr) : UInt8*
	fun gdImagePolygon(im : GDImagePtr, p : GDPointPtr, n : Int32, c : Int32) : Void
	fun gdImageOpenPolygon(im : GDImagePtr, p : GDPointPtr, n : Int32, c : Int32) : Void
	fun gdImageFilledPolygon(im : GDImagePtr, p : GDPointPtr, n : Int32, c : Int32) : Void
	fun gdImageColorAllocate(im : GDImagePtr, r : Int32, g : Int32, b : Int32) : Int32
	fun gdImageColorAllocateAlpha(im : GDImagePtr, r : Int32, g : Int32, b : Int32, a : Int32) : Int32
	fun gdImageColorClosest(im : GDImagePtr, r : Int32, g : Int32, b : Int32) : Int32
	fun gdImageColorClosestAlpha(im : GDImagePtr, r : Int32, g : Int32, b : Int32, a : Int32) : Int32
	fun gdImageColorClosestHWB(im : GDImagePtr, r : Int32, g : Int32, b : Int32) : Int32
	fun gdImageColorExact(im : GDImagePtr, r : Int32, g : Int32, b : Int32) : Int32
	fun gdImageColorExactAlpha(im : GDImagePtr, r : Int32, g : Int32, b : Int32, a : Int32) : Int32
	fun gdImageColorResolve(im : GDImagePtr, r : Int32, g : Int32, b : Int32) : Int32
	fun gdImageColorResolveAlpha(im : GDImagePtr, r : Int32, g : Int32, b : Int32, a : Int32) : Int32
	fun gdImageColorDeallocate(im : GDImagePtr, color : Int32) : Void
	fun gdImageCreatePaletteFromTrueColor(im : GDImagePtr, ditherFlag : Int32, colorsWanted : Int32) : GDImagePtr
	fun gdImageTrueColorToPalette(im : GDImagePtr, ditherFlag : Int32, colorsWanted : Int32) : Int32
	fun gdImagePaletteToTrueColor(src : GDImagePtr) : Int32
	fun gdImageColorMatch(im1 : GDImagePtr, im2 : GDImagePtr) : Int32
	fun gdImageTrueColorToPaletteSetMethod(im : GDImagePtr, method : Int32, speed : Int32) : Int32
	fun gdImageTrueColorToPaletteSetQuality(im : GDImagePtr, min_quality : Int32, max_quality : Int32) : Void
	fun gdImageColorTransparent(im : GDImagePtr, color : Int32) : Void
	fun gdImagePaletteCopy(dst : GDImagePtr, src : GDImagePtr) : Void
	fun gdImageColorReplace(im : GDImagePtr, src : Int32, dst : Int32) : Int32
	fun gdImageColorReplaceThreshold(im : GDImagePtr, src : Int32, dst : Int32, threshold : Float32) : Int32
	fun gdImageColorReplaceArray(im : GDImagePtr, len : Int32, src : Int32*, dst : Int32*) : Int32
	fun gdImageColorReplaceCallback(im : GDImagePtr, callback : GDCallbackImageColor) : Int32
	fun gdImageGif(im : GDImagePtr, out : LibC::File) : Void
	fun gdImagePng(im : GDImagePtr, out : LibC::File) : Void
	fun gdImagePngCtx(im : GDImagePtr, out : GDIOCtx*) : Void
	fun gdImageGifCtx(im : GDImagePtr, out : GDIOCtx*) : Void
	fun gdImageTiff(im : GDImagePtr, outFile : LibC::File) : Void
	fun gdImageTiffPtr(im : GDImagePtr, size : Int32*) : Void*
	fun gdImageTiffCtx(image : GDImagePtr, out : GDIOCtx*) : Void
	fun gdImageBmpPtr(im : GDImagePtr, size : Int32*, compression : Int32) : Void*
	fun gdImageBmp(im : GDImagePtr, outFile : LibC::File, compression : Int32) : Void
	fun gdImageBmpCtx(im : GDImagePtr, out : GDIOCtxPtr, compression : Int32) : Void
	fun gdImagePngEx(im : GDImagePtr, out : LibC::File, level : Int32) : Void
	fun gdImagePngCtxEx(im : GDImagePtr, out : GDIOCtx*, level : Int32) : Void
	fun gdImageWBMP(image : GDImagePtr, fg : Int32, out : LibC::File) : Void
	fun gdImageWBMPCtx(image : GDImagePtr, fg : Int32, out : GDIOCtx*) : Void
	fun gdFree(m : Void*) : Void
	fun gdImageWBMPPtr(im : GDImagePtr, size : Int32*, fg : Int32) : Void*
	fun gdImageJpeg(im : GDImagePtr, out : LibC::File, quality : Int32) : Void
	fun gdImageJpegCtx(im : GDImagePtr, out : GDIOCtx*, quality : Int32) : Void
	fun gdImageJpegPtr(im : GDImagePtr, size : Int32*, quality : Int32) : Void*
	fun gdImageWebpEx(im : GDImagePtr, outFile : LibC::File, quantization : Int32) : Void
	fun gdImageWebp(im : GDImagePtr, outFile : LibC::File) : Void
	fun gdImageWebpPtr(im : GDImagePtr, size : Int32*) : Void*
	fun gdImageWebpPtrEx(im : GDImagePtr, size : Int32*, quantization : Int32) : Void*
	fun gdImageWebpCtx(im : GDImagePtr, outfile : GDIOCtx*, quantization : Int32) : Void
	fun gdImageGifAnimBegin(im : GDImagePtr, outFile : LibC::File, globalCM : Int32, loops : Int32) : Void
	fun gdImageGifAnimAdd(im : GDImagePtr, outFile : LibC::File, localCM : Int32, leftOfs : Int32, topOfs : Int32, delay : Int32, disposal : Int32, previm : GDImagePtr) : Void
	fun gdImageGifAnimEnd(outFile : LibC::File) : Void
	fun gdImageGifAnimBeginCtx(im : GDImagePtr, out : GDIOCtx*, globalCM : Int32, loops : Int32) : Void
	fun gdImageGifAnimAddCtx(im : GDImagePtr, out : GDIOCtx*, localCM : Int32, leftOfs : Int32, topOfs : Int32, delay : Int32, disposal : Int32, previm : GDImagePtr) : Void
	fun gdImageGifAnimEndCtx(out : GDIOCtx*) : Void
	fun gdImageGifAnimBeginPtr(im : GDImagePtr, size : Int32*, globalCM : Int32, loops : Int32) : Void*
	fun gdImageGifAnimAddPtr(im : GDImagePtr, size : Int32*, localCM : Int32, leftOfs : Int32, topOfs : Int32, delay : Int32, disposal : Int32, previm : GDImagePtr) : Void*
	fun gdImageGifAnimEndPtr(size : Int32*) : Void*
	fun gdImagePngToSink(im : GDImagePtr, out : GDSinkPtr) : Void
	fun gdImageGd(im : GDImagePtr, out : LibC::File) : Void
	fun gdImageGd2(im : GDImagePtr, out : LibC::File, cs : Int32, fmt : Int32) : Void
	fun gdImageGifPtr(im : GDImagePtr, size : Int32*) : Void*
	fun gdImagePngPtr(im : GDImagePtr, size : Int32*) : Void*
	fun gdImagePngPtrEx(im : GDImagePtr, size : Int32*, level : Int32) : Void*
	fun gdImageGdPtr(im : GDImagePtr, size : Int32*) : Void*
	fun gdImageGd2Ptr(im : GDImagePtr, cs : Int32, fmt : Int32, size : Int32*) : Void*
	fun gdImageFilledArc(im : GDImagePtr, cx : Int32, cy : Int32, w : Int32, h : Int32, s : Int32, e : Int32, color : Int32, style : Int32) : Void
	fun gdImageArc(im : GDImagePtr, cx : Int32, cy : Int32, w : Int32, h : Int32, s : Int32, e : Int32, color : Int32) : Void
	fun gdImageEllipse(im : GDImagePtr, cx : Int32, cy : Int32, w : Int32, h : Int32, color : Int32) : Void
	fun gdImageFilledEllipse(im : GDImagePtr, cx : Int32, cy : Int32, w : Int32, h : Int32, color : Int32) : Void
	fun gdImageFillToBorder(im : GDImagePtr, x : Int32, y : Int32, border : Int32, color : Int32) : Void
	fun gdImageFill(im : GDImagePtr, x : Int32, y : Int32, color : Int32) : Void
	fun gdImageCopy(dst : GDImagePtr, src : GDImagePtr, dstX : Int32, dstY : Int32, srcX : Int32, srcY : Int32, w : Int32, h : Int32) : Void
	fun gdImageCopyMerge(dst : GDImagePtr, src : GDImagePtr, dstX : Int32, dstY : Int32, srcX : Int32, srcY : Int32, w : Int32, h : Int32, pct : Int32) : Void
	fun gdImageCopyMergeGray(dst : GDImagePtr, src : GDImagePtr, dstX : Int32, dstY : Int32, srcX : Int32, srcY : Int32, w : Int32, h : Int32, pct : Int32) : Void
	fun gdImageCopyResized(dst : GDImagePtr, src : GDImagePtr, dstX : Int32, dstY : Int32, srcX : Int32, srcY : Int32, dstW : Int32, dstH : Int32, srcW : Int32, srcH : Int32) : Void
	fun gdImageCopyResampled(dst : GDImagePtr, src : GDImagePtr, dstX : Int32, dstY : Int32, srcX : Int32, srcY : Int32, dstW : Int32, dstH : Int32, srcW : Int32, srcH : Int32) : Void
	fun gdImageCopyRotated(dst : GDImagePtr, src : GDImagePtr, dstX : Float64, dstY : Float64, srcX : Int32, srcY : Int32, srcWidth : Int32, srcHeight : Int32, angle : Int32) : Void
	fun gdImageClone(src : GDImagePtr) : GDImagePtr
	fun gdImageSetBrush(im : GDImagePtr, brush : GDImagePtr) : Void
	fun gdImageSetTile(im : GDImagePtr, tile : GDImagePtr) : Void
	fun gdImageSetAntiAliased(im : GDImagePtr, c : Int32) : Void
	fun gdImageSetAntiAliasedDontBlend(im : GDImagePtr, c : Int32, dont_blend : Int32) : Void
	fun gdImageSetStyle(im : GDImagePtr, style : Int32*, noOfPixels : Int32) : Void
	fun gdImageSetThickness(im : GDImagePtr, thickness : Int32) : Void
	fun gdImageInterlace(im : GDImagePtr, interlaceArg : Int32) : Void
	fun gdImageAlphaBlending(im : GDImagePtr, alphaBlendingArg : Int32) : Void
	fun gdImageSaveAlpha(im : GDImagePtr, saveAlphaArg : Int32) : Void
	fun gdImageNeuQuant(im : GDImagePtr, max_color : Int32, sample_factor : Int32) : GDImagePtr
	fun gdImagePixelate(im : GDImagePtr, block_size : Int32, mode : UInt32) : Int32
	fun gdImageScatter(im : GDImagePtr, sub : Int32, plus : Int32) : Int32
	fun gdImageScatterColor(im : GDImagePtr, sub : Int32, plus : Int32, colors : Int32*, num_colors : UInt32) : Int32
	fun gdImageScatterEx(im : GDImagePtr, s : GDScatterPtr) : Int32
	fun gdImageSmooth(im : GDImagePtr, weight : Float32) : Int32
	fun gdImageMeanRemoval(im : GDImagePtr) : Int32
	fun gdImageEmboss(im : GDImagePtr) : Int32
	fun gdImageGaussianBlur(im : GDImagePtr) : Int32
	fun gdImageEdgeDetectQuick(src : GDImagePtr) : Int32
	fun gdImageSelectiveBlur(src : GDImagePtr) : Int32
	fun gdImageConvolution(src : GDImagePtr, filter : Float32[3][3], filter_div : Float32, offset : Float32) : Int32
	fun gdImageColor(src : GDImagePtr, red : Int32, green : Int32, blue : Int32, alpha : Int32) : Int32
	fun gdImageContrast(src : GDImagePtr, contrast : Float64) : Int32
	fun gdImageBrightness(src : GDImagePtr, brightness : Int32) : Int32
	fun gdImageGrayScale(src : GDImagePtr) : Int32
	fun gdImageNegate(src : GDImagePtr) : Int32
	fun gdNewFileCtx(noName : LibC::File) : GDIOCtx*
	fun gdNewDynamicCtx(size : Int32, data : Void*) : GDIOCtx*
	fun gdNewDynamicCtxEx(size : Int32, data : Void*, freeFlag : Int32) : GDIOCtx*
	fun gdNewSSCtx(in : GDSourcePtr, out : GDSinkPtr) : GDIOCtx*
	fun gdDPExtractData(ctx : GDIOCtx*, size : Int32*) : Void*
	fun gdImageCompare(im1 : GDImagePtr, im2 : GDImagePtr) : Int32
	fun gdImageFlipHorizontal(im : GDImagePtr) : Void
	fun gdImageFlipVertical(im : GDImagePtr) : Void
	fun gdImageFlipBoth(im : GDImagePtr) : Void
	fun gdImageCrop(src : GDImagePtr, crop : GDRect*) : GDImagePtr
	fun gdImageCropAuto(im : GDImagePtr, mode : UInt32) : GDImagePtr
	fun gdImageCropThreshold(im : GDImagePtr, color : UInt32, threshold : Float32) : GDImagePtr
	fun gdImageSetInterpolationMethod(im : GDImagePtr, id : GDInterpolationMethod) : Int32
	fun gdImageScaleBilinear(im : GDImagePtr, new_width : UInt32, new_height : UInt32) : GDImagePtr
	fun gdImageScaleBicubic(src_img : GDImagePtr, new_width : UInt32, new_height : UInt32) : GDImagePtr
	fun gdImageScaleBicubicFixed(src : GDImagePtr, width : UInt32, height : UInt32) : GDImagePtr
	fun gdImageScaleNearestNeighbour(im : GDImagePtr, width : UInt32, height : UInt32) : GDImagePtr
	fun gdImageScaleTwoPass(pOrigImage : GDImagePtr, uOrigWidth : UInt32, uOrigHeight : UInt32, uNewWidth : UInt32, uNewHeight : UInt32) : GDImagePtr
	fun gdImageScale(src : GDImagePtr, new_width : UInt32, new_height : UInt32) : GDImagePtr
	fun gdImageRotate90(src : GDImagePtr, ignoretransparent : Int32) : GDImagePtr
	fun gdImageRotate180(src : GDImagePtr, ignoretransparent : Int32) : GDImagePtr
	fun gdImageRotate270(src : GDImagePtr, ignoretransparent : Int32) : GDImagePtr
	fun gdImageRotateNearestNeighbour(src : GDImagePtr, degrees : Float32, bgColor : Int32) : GDImagePtr
	fun gdImageRotateBilinear(src : GDImagePtr, degrees : Float32, bgColor : Int32) : GDImagePtr
	fun gdImageRotateBicubicFixed(src : GDImagePtr, degrees : Float32, bgColor : Int32) : GDImagePtr
	fun gdImageRotateGeneric(src : GDImagePtr, degrees : Float32, bgColor : Int32) : GDImagePtr
	fun gdImageRotateInterpolated(src : GDImagePtr, angle : Float32, bgcolor : Int32) : GDImagePtr
	fun gdAffineApplyToPointF(dst : GDPointFPtr, src : GDPointFPtr, affine : Float64*) : Int32
	fun gdAffineInvert(dst : Float64*, src : Float64*) : Int32
	fun gdAffineFlip(dst_affine : Float64*, src_affine : Float64*, flip_h : Int32, flip_v : Int32) : Int32
	fun gdAffineConcat(dst : Float64*, m1 : Float64*, m2 : Float64*) : Int32
	fun gdAffineIdentity(dst : Float64*) : Int32
	fun gdAffineScale(dst : Float64*, scale_x : Float64, scale_y : Float64) : Int32
	fun gdAffineRotate(dst : Float64*, angle : Float64) : Int32
	fun gdAffineShearHorizontal(dst : Float64*, angle : Float64) : Int32
	fun gdAffineShearVertical(dst : Float64*, angle : Float64) : Int32
	fun gdAffineTranslate(dst : Float64*, offset_x : Float64, offset_y : Float64) : Int32
	fun gdAffineExpansion(src : Float64*) : Float64
	fun gdAffineRectilinear(src : Float64*) : Int32
	fun gdAffineEqual(matrix1 : Float64*, matrix2 : Float64*) : Int32
	fun gdTransformAffineGetImage(dst : GDImagePtr*, src : GDImagePtr, src_area : GDRectPtr, affine : Float64*) : Int32
	fun gdTransformAffineCopy(dst : GDImagePtr, dst_x : Int32, dst_y : Int32, src : GDImagePtr, src_region : GDRectPtr, affine : Float64*) : Int32
	fun gdTransformAffineBoundingBox(src : GDRectPtr, affine : Float64*, bbox : GDRectPtr) : Int32
	fun gdImageSquareToCircle(im : GDImagePtr, radius : Int32) : GDImagePtr
	fun gdImageStringFTCircle(im : GDImagePtr, cx : Int32, cy : Int32, radius : Float64, textRadius : Float64, fillPortion : Float64, font : UInt8*, points : Float64, top : UInt8*, bottom : UInt8*, fgcolor : Int32) : UInt8*
	fun gdImageSharpen(im : GDImagePtr, pct : Int32) : Void
	
	# Vars #
	
	
end
