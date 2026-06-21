.class public final Lcom/motorola/camera/photometadata/PhotoMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ASCII:Ljava/nio/charset/Charset;

.field public static final BITS_PER_SAMPLE_GREYSCALE_2:[I

.field public static final BITS_PER_SAMPLE_RGB:[I

.field public static final DEBUG_READ_WRITE:Z

.field public static final EXIF_ASCII_PREFIX:[B

.field public static final EXIF_POINTER_TAGS:[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

.field public static final EXIF_TAGS:[[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

.field public static final GAINMAP_END:[B

.field public static final GAINMAP_LENGTH:[B

.field public static final GAINMAP_TAG:[B

.field public static final HEIF_BRAND_HEIC:[B

.field public static final HEIF_BRAND_MIF1:[B

.field public static final HEIF_TYPE_FTYP:[B

.field public static final IDENTIFIER_EXIF_APP1:[B

.field public static final IDENTIFIER_GCONTAINER_APP1:[B

.field public static final IDENTIFIER_HTTP_APP1:[B

.field public static final IDENTIFIER_ICC_APP2:[B

.field public static final IDENTIFIER_MMIMETA_APP6:[B

.field public static final IDENTIFIER_MPF_APP2:[B

.field public static final IFD_FORMAT_BYTES_PER_FORMAT:[I

.field public static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field public static final JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

.field public static final JPEG_INTERCHANGE_FORMAT_TAG:Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

.field public static final JPEG_SIGNATURE:[B

.field public static final ORF_MAKER_NOTE_HEADER_1:[B

.field public static final ORF_MAKER_NOTE_HEADER_2:[B

.field public static final TAG_RAF_IMAGE_SIZE:Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

.field public static final sExifPointerTagMap:Landroid/util/SparseIntArray;

.field public static final sExifTagMapsForReading:Landroid/util/SparseArray;

.field public static final sExifTagMapsForWriting:Landroid/util/SparseArray;

.field public static final sGpsTimestampPattern:Ljava/util/regex/Pattern;

.field public static final sNonZeroTimePattern:Ljava/util/regex/Pattern;

.field public static final sTagSetForCompatibility:Ljava/util/HashSet;


# instance fields
.field public mApp6Data:Ljava/util/ArrayList;

.field public mAppData:Ljava/util/HashMap;

.field public final mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field public mAttributes:Landroid/util/SparseArray;

.field public final mAttributesOffsets:Ljava/util/HashSet;

.field public mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

.field public mExifByteOrder:Ljava/nio/ByteOrder;

.field public mExifOffset:I

.field public final mFilename:Ljava/lang/String;

.field public mHasThumbnail:Z

.field public final mIsInputStream:Z

.field public mIsSupportedFile:Z

.field public mMimeType:I

.field public mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

.field public mOrfMakerNoteOffset:I

.field public mOrfThumbnailLength:I

.field public mOrfThumbnailOffset:I

.field public mPrimaryImageSize:I

.field public mRw2JpgFromRawOffset:I

.field public mSecondaryImageSize:I

.field public final mSeekableFileDescriptor:Ljava/io/FileDescriptor;

.field public mThumbnailBytes:[B

.field public mThumbnailCompression:I

.field public mThumbnailLength:I

.field public mThumbnailOffset:I

.field public mUHdrGContainerApp1:[B

.field public mUHdrIccProfileApp2:[B

.field public mUHdrMpfApp2:[B


# direct methods
.method static constructor <clinit>()V
    .locals 129

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->DEBUG_PHOTO_METADATA:Z

    sput-boolean v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->DEBUG_READ_WRITE:Z

    const/4 v0, 0x3

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->JPEG_SIGNATURE:[B

    const/4 v1, 0x4

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    sput-object v2, Lcom/motorola/camera/photometadata/PhotoMetadata;->HEIF_TYPE_FTYP:[B

    new-array v2, v1, [B

    fill-array-data v2, :array_2

    sput-object v2, Lcom/motorola/camera/photometadata/PhotoMetadata;->HEIF_BRAND_MIF1:[B

    new-array v2, v1, [B

    fill-array-data v2, :array_3

    sput-object v2, Lcom/motorola/camera/photometadata/PhotoMetadata;->HEIF_BRAND_HEIC:[B

    const/4 v2, 0x6

    new-array v3, v2, [B

    fill-array-data v3, :array_4

    sput-object v3, Lcom/motorola/camera/photometadata/PhotoMetadata;->ORF_MAKER_NOTE_HEADER_1:[B

    const/16 v3, 0xa

    new-array v4, v3, [B

    fill-array-data v4, :array_5

    sput-object v4, Lcom/motorola/camera/photometadata/PhotoMetadata;->ORF_MAKER_NOTE_HEADER_2:[B

    const-string v16, "SINGLE"

    const-string v17, "DOUBLE"

    const-string v5, ""

    const-string v6, "BYTE"

    const-string v7, "STRING"

    const-string v8, "USHORT"

    const-string v9, "ULONG"

    const-string v10, "URATIONAL"

    const-string v11, "SBYTE"

    const-string v12, "UNDEFINED"

    const-string v13, "SSHORT"

    const-string v14, "SLONG"

    const-string v15, "SRATIONAL"

    filled-new-array/range {v5 .. v17}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/motorola/camera/photometadata/PhotoMetadata;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    const/16 v4, 0xe

    new-array v5, v4, [I

    fill-array-data v5, :array_6

    sput-object v5, Lcom/motorola/camera/photometadata/PhotoMetadata;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v5, 0x8

    new-array v6, v5, [B

    fill-array-data v6, :array_7

    sput-object v6, Lcom/motorola/camera/photometadata/PhotoMetadata;->EXIF_ASCII_PREFIX:[B

    filled-new-array {v5, v5, v5}, [I

    move-result-object v6

    sput-object v6, Lcom/motorola/camera/photometadata/PhotoMetadata;->BITS_PER_SAMPLE_RGB:[I

    filled-new-array {v5}, [I

    move-result-object v6

    sput-object v6, Lcom/motorola/camera/photometadata/PhotoMetadata;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v6, "NewSubfileType"

    const/16 v8, 0xfe

    invoke-direct {v7, v6, v8, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    move v9, v8

    new-instance v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v10, "SubfileType"

    const/16 v11, 0xff

    invoke-direct {v8, v10, v11, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    move v12, v9

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v13, "ImageWidth"

    const/16 v14, 0x100

    invoke-direct {v9, v13, v14}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;I)V

    move-object v13, v10

    new-instance v10, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "ImageLength"

    const/16 v4, 0x101

    invoke-direct {v10, v15, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;I)V

    move v15, v11

    new-instance v11, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v4, "BitsPerSample"

    const/16 v5, 0x102

    invoke-direct {v11, v4, v5, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    move/from16 v16, v12

    new-instance v12, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "Compression"

    const/16 v3, 0x103

    invoke-direct {v12, v5, v3, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    move-object/from16 v17, v13

    new-instance v13, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v3, "PhotometricInterpretation"

    const/16 v2, 0x106

    invoke-direct {v13, v3, v2, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    move/from16 v18, v14

    new-instance v14, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v2, "ImageDescription"

    const/16 v1, 0x10e

    const/4 v0, 0x2

    invoke-direct {v14, v2, v1, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    move/from16 v19, v15

    new-instance v15, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v1, "Make"

    move-object/from16 v49, v2

    const/16 v2, 0x10f

    invoke-direct {v15, v1, v2, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-object/from16 v50, v1

    const-string v1, "Model"

    move-object/from16 v51, v3

    const/16 v3, 0x110

    invoke-direct {v2, v1, v3, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v0, "StripOffsets"

    move-object/from16 v20, v2

    const/16 v2, 0x111

    invoke-direct {v3, v0, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-object/from16 v21, v3

    const-string v3, "Orientation"

    move-object/from16 v52, v0

    const/16 v0, 0x112

    move-object/from16 v22, v7

    const/4 v7, 0x3

    invoke-direct {v2, v3, v0, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-object/from16 v23, v2

    const-string v2, "SamplesPerPixel"

    move-object/from16 v53, v3

    const/16 v3, 0x115

    invoke-direct {v0, v2, v3, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v3, "RowsPerStrip"

    move-object/from16 v24, v0

    const/16 v0, 0x116

    invoke-direct {v7, v3, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-object/from16 v25, v7

    const-string v7, "StripByteCounts"

    move-object/from16 v26, v8

    const/16 v8, 0x117

    invoke-direct {v0, v7, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "XResolution"

    move-object/from16 v27, v0

    const/16 v0, 0x11a

    move-object/from16 v54, v3

    const/4 v3, 0x5

    invoke-direct {v7, v8, v0, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "YResolution"

    move-object/from16 v28, v7

    const/16 v7, 0x11b

    invoke-direct {v0, v8, v7, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "PlanarConfiguration"

    const/16 v3, 0x11c

    move-object/from16 v29, v0

    const/4 v0, 0x3

    invoke-direct {v7, v8, v3, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "ResolutionUnit"

    move-object/from16 v30, v7

    const/16 v7, 0x128

    invoke-direct {v3, v8, v7, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "TransferFunction"

    move-object/from16 v31, v3

    const/16 v3, 0x12d

    invoke-direct {v7, v8, v3, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v3, "Software"

    const/16 v8, 0x131

    move-object/from16 v32, v7

    const/4 v7, 0x2

    invoke-direct {v0, v3, v8, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "DateTime"

    move-object/from16 v33, v0

    const/16 v0, 0x132

    invoke-direct {v3, v8, v0, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "Artist"

    move-object/from16 v34, v3

    const/16 v3, 0x13b

    invoke-direct {v0, v8, v3, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v7, "WhitePoint"

    const/16 v8, 0x13e

    move-object/from16 v35, v0

    const/4 v0, 0x5

    invoke-direct {v3, v7, v8, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "PrimaryChromaticities"

    move-object/from16 v36, v3

    const/16 v3, 0x13f

    invoke-direct {v7, v8, v3, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v3, "SubIFDPointer"

    const/16 v8, 0x14a

    move-object/from16 v37, v7

    const/4 v7, 0x4

    invoke-direct {v0, v3, v8, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-object/from16 v39, v0

    const-string v0, "JPEGInterchangeFormat"

    move-object/from16 v56, v3

    const/16 v3, 0x201

    invoke-direct {v8, v0, v3, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-object/from16 v57, v0

    const-string v0, "JPEGInterchangeFormatLength"

    move-object/from16 v58, v2

    const/16 v2, 0x202

    invoke-direct {v3, v0, v2, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v2, "YCbCrCoefficients"

    move-object/from16 v40, v3

    const/16 v3, 0x211

    move-object/from16 v41, v8

    const/4 v8, 0x5

    invoke-direct {v7, v2, v3, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v3, "YCbCrSubSampling"

    const/16 v8, 0x212

    move-object/from16 v42, v7

    const/4 v7, 0x3

    invoke-direct {v2, v3, v8, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "YCbCrPositioning"

    move-object/from16 v43, v2

    const/16 v2, 0x213

    invoke-direct {v3, v8, v2, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v7, "ReferenceBlackWhite"

    const/16 v8, 0x214

    move-object/from16 v44, v3

    const/4 v3, 0x5

    invoke-direct {v2, v7, v8, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v7, "Copyright"

    const v8, 0x8298

    move-object/from16 v45, v2

    const/4 v2, 0x2

    invoke-direct {v3, v7, v8, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v7, "ExifIFDPointer"

    const v8, 0x8769

    move-object/from16 v46, v3

    const/4 v3, 0x4

    invoke-direct {v2, v7, v8, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-object/from16 v59, v2

    const-string v2, "GPSInfoIFDPointer"

    move-object/from16 v60, v0

    const v0, 0x8825

    invoke-direct {v8, v2, v0, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-object/from16 v61, v7

    const-string v7, "SensorTopBorder"

    invoke-direct {v0, v7, v3, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-object/from16 v62, v0

    const-string v0, "SensorLeftBorder"

    move-object/from16 v63, v8

    const/4 v8, 0x5

    invoke-direct {v7, v0, v8, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "SensorBottomBorder"

    move-object/from16 v64, v7

    const/4 v7, 0x6

    invoke-direct {v0, v8, v7, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "SensorRightBorder"

    move-object/from16 v65, v0

    const/4 v0, 0x7

    invoke-direct {v7, v8, v0, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "ISO"

    const/16 v0, 0x17

    move-object/from16 v66, v7

    const/4 v7, 0x3

    invoke-direct {v3, v8, v0, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v7, "JpgFromRaw"

    const/16 v8, 0x2e

    move-object/from16 v67, v3

    const/4 v3, 0x7

    invoke-direct {v0, v7, v8, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    move-object/from16 v47, v0

    move/from16 v0, v16

    move-object/from16 v3, v17

    move-object/from16 v16, v20

    move-object/from16 v17, v21

    move-object/from16 v7, v22

    move-object/from16 v18, v23

    move-object/from16 v19, v24

    move-object/from16 v20, v25

    move-object/from16 v8, v26

    move-object/from16 v21, v27

    move-object/from16 v22, v28

    move-object/from16 v23, v29

    move-object/from16 v24, v30

    move-object/from16 v25, v31

    move-object/from16 v26, v32

    move-object/from16 v27, v33

    move-object/from16 v28, v34

    move-object/from16 v29, v35

    move-object/from16 v30, v36

    move-object/from16 v31, v37

    move-object/from16 v32, v39

    move-object/from16 v34, v40

    move-object/from16 v33, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v43

    move-object/from16 v37, v44

    move-object/from16 v38, v45

    move-object/from16 v39, v46

    move-object/from16 v40, v59

    move-object/from16 v68, v61

    move-object/from16 v42, v62

    move-object/from16 v41, v63

    move-object/from16 v43, v64

    move-object/from16 v44, v65

    move-object/from16 v45, v66

    move-object/from16 v46, v67

    filled-new-array/range {v7 .. v47}, [Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-result-object v69

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "ExposureTime"

    const v9, 0x829a

    const/4 v10, 0x5

    invoke-direct {v7, v8, v9, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v9, "FNumber"

    const v11, 0x829d

    invoke-direct {v8, v9, v11, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v10, "ExposureProgram"

    const v11, 0x8822

    const/4 v12, 0x3

    invoke-direct {v9, v10, v11, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v11, "SpectralSensitivity"

    const v13, 0x8824

    const/4 v14, 0x2

    invoke-direct {v10, v11, v13, v14}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v11, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v13, "ISOSpeedRatings"

    const v14, 0x8827

    invoke-direct {v11, v13, v14, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v13, "OECF"

    const v14, 0x8828

    const/4 v15, 0x7

    invoke-direct {v12, v13, v14, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v13, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "ExifVersion"

    const v15, 0x9000

    const/4 v0, 0x2

    invoke-direct {v13, v14, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "DateTimeOriginal"

    move-object/from16 v70, v7

    const v7, 0x9003

    invoke-direct {v14, v15, v7, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "DateTimeDigitized"

    move-object/from16 v71, v8

    const v8, 0x9004

    invoke-direct {v7, v15, v8, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "ComponentsConfiguration"

    const v15, 0x9101

    move-object/from16 v78, v7

    const/4 v7, 0x7

    invoke-direct {v0, v8, v15, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "CompressedBitsPerPixel"

    const v15, 0x9102

    move-object/from16 v79, v0

    const/4 v0, 0x5

    invoke-direct {v7, v8, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "ShutterSpeedValue"

    const v0, 0x9201

    move-object/from16 v80, v7

    const/16 v7, 0xa

    invoke-direct {v8, v15, v0, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "ApertureValue"

    const v7, 0x9202

    move-object/from16 v81, v8

    const/4 v8, 0x5

    invoke-direct {v0, v15, v7, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "BrightnessValue"

    const v15, 0x9203

    move-object/from16 v82, v0

    const/16 v0, 0xa

    invoke-direct {v7, v8, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "ExposureBiasValue"

    move-object/from16 v83, v7

    const v7, 0x9204

    invoke-direct {v8, v15, v7, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v7, "MaxApertureValue"

    const v15, 0x9205

    move-object/from16 v84, v8

    const/4 v8, 0x5

    invoke-direct {v0, v7, v15, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "SubjectDistance"

    move-object/from16 v85, v0

    const v0, 0x9206

    invoke-direct {v7, v15, v0, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "MeteringMode"

    const v15, 0x9207

    move-object/from16 v86, v7

    const/4 v7, 0x3

    invoke-direct {v0, v8, v15, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "LightSource"

    move-object/from16 v87, v0

    const v0, 0x9208

    invoke-direct {v8, v15, v0, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "Flash"

    move-object/from16 v88, v8

    const v8, 0x9209

    invoke-direct {v0, v15, v8, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "FocalLength"

    const v7, 0x920a

    move-object/from16 v89, v0

    const/4 v0, 0x5

    invoke-direct {v8, v15, v7, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v7, "SubjectArea"

    const v15, 0x9214

    move-object/from16 v90, v8

    const/4 v8, 0x3

    invoke-direct {v0, v7, v15, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "MakerNote"

    const v15, 0x927c

    move-object/from16 v91, v0

    const/4 v0, 0x7

    invoke-direct {v7, v8, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "UserComment"

    move-object/from16 v92, v7

    const v7, 0x9286

    invoke-direct {v8, v15, v7, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v7, "SubSecTime"

    const v15, 0x9290

    move-object/from16 v93, v8

    const/4 v8, 0x2

    invoke-direct {v0, v7, v15, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "SubSecTimeOriginal"

    move-object/from16 v94, v0

    const v0, 0x9291

    invoke-direct {v7, v15, v0, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "SubSecTimeDigitized"

    move-object/from16 v95, v7

    const v7, 0x9292

    invoke-direct {v0, v15, v7, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "FlashpixVersion"

    const v15, 0xa000

    move-object/from16 v96, v0

    const/4 v0, 0x7

    invoke-direct {v7, v8, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "ColorSpace"

    const v15, 0xa001

    move-object/from16 v97, v7

    const/4 v7, 0x3

    invoke-direct {v0, v8, v15, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "PixelXDimension"

    const v15, 0xa002

    invoke-direct {v7, v8, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "PixelYDimension"

    move-object/from16 v98, v0

    const v0, 0xa003

    invoke-direct {v8, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "RelatedSoundFile"

    move-object/from16 v99, v7

    const v7, 0xa004

    move-object/from16 v100, v8

    const/4 v8, 0x2

    invoke-direct {v0, v15, v7, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "InteroperabilityIFDPointer"

    const v15, 0xa005

    move-object/from16 v101, v0

    const/4 v0, 0x4

    invoke-direct {v7, v8, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "FlashEnergy"

    const v15, 0xa20b

    move-object/from16 v102, v7

    const/4 v7, 0x5

    invoke-direct {v0, v8, v15, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "SpatialFrequencyResponse"

    const v7, 0xa20c

    move-object/from16 v103, v0

    const/4 v0, 0x7

    invoke-direct {v8, v15, v7, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v7, "FocalPlaneXResolution"

    const v15, 0xa20e

    move-object/from16 v104, v8

    const/4 v8, 0x5

    invoke-direct {v0, v7, v15, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "FocalPlaneYResolution"

    move-object/from16 v105, v0

    const v0, 0xa20f

    invoke-direct {v7, v15, v0, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "FocalPlaneResolutionUnit"

    const v15, 0xa210

    move-object/from16 v106, v7

    const/4 v7, 0x3

    invoke-direct {v0, v8, v15, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "SubjectLocation"

    move-object/from16 v107, v0

    const v0, 0xa214

    invoke-direct {v8, v15, v0, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "ExposureIndex"

    const v7, 0xa215

    move-object/from16 v108, v8

    const/4 v8, 0x5

    invoke-direct {v0, v15, v7, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "SensingMethod"

    const v15, 0xa217

    move-object/from16 v109, v0

    const/4 v0, 0x3

    invoke-direct {v7, v8, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "FileSource"

    const v15, 0xa300

    move-object/from16 v110, v7

    const/4 v7, 0x7

    invoke-direct {v0, v8, v15, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "SceneType"

    move-object/from16 v111, v0

    const v0, 0xa301

    invoke-direct {v8, v15, v0, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "CFAPattern"

    move-object/from16 v112, v8

    const v8, 0xa302

    invoke-direct {v0, v15, v8, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "CustomRendered"

    const v15, 0xa401

    move-object/from16 v113, v0

    const/4 v0, 0x3

    invoke-direct {v7, v8, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "ExposureMode"

    move-object/from16 v114, v7

    const v7, 0xa402

    invoke-direct {v8, v15, v7, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "WhiteBalance"

    move-object/from16 v115, v8

    const v8, 0xa403

    invoke-direct {v7, v15, v8, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "DigitalZoomRatio"

    const v0, 0xa404

    move-object/from16 v116, v7

    const/4 v7, 0x5

    invoke-direct {v8, v15, v0, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v7, "FocalLengthIn35mmFilm"

    const v15, 0xa405

    move-object/from16 v117, v8

    const/4 v8, 0x3

    invoke-direct {v0, v7, v15, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "SceneCaptureType"

    move-object/from16 v118, v0

    const v0, 0xa406

    invoke-direct {v7, v15, v0, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "GainControl"

    move-object/from16 v119, v7

    const v7, 0xa407

    invoke-direct {v0, v15, v7, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "Contrast"

    move-object/from16 v120, v0

    const v0, 0xa408

    invoke-direct {v7, v15, v0, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "Saturation"

    move-object/from16 v121, v7

    const v7, 0xa409

    invoke-direct {v0, v15, v7, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "Sharpness"

    move-object/from16 v122, v0

    const v0, 0xa40a

    invoke-direct {v7, v15, v0, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "DeviceSettingDescription"

    const v8, 0xa40b

    move-object/from16 v123, v7

    const/4 v7, 0x7

    invoke-direct {v0, v15, v8, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "SubjectDistanceRange"

    const v15, 0xa40c

    move-object/from16 v124, v0

    const/4 v0, 0x3

    invoke-direct {v7, v8, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "ImageUniqueID"

    const v15, 0xa420

    move-object/from16 v125, v7

    const/4 v7, 0x2

    invoke-direct {v0, v8, v15, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "DNGVersion"

    const v15, 0xc612

    move-object/from16 v126, v0

    const/4 v0, 0x1

    invoke-direct {v7, v8, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "DefaultCropSize"

    const v0, 0xc620

    invoke-direct {v8, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;I)V

    move-object/from16 v127, v7

    move-object/from16 v128, v8

    move-object/from16 v72, v9

    move-object/from16 v73, v10

    move-object/from16 v74, v11

    move-object/from16 v75, v12

    move-object/from16 v76, v13

    move-object/from16 v77, v14

    filled-new-array/range {v70 .. v128}, [Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-result-object v70

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v7, "GPSVersionID"

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {v0, v7, v8, v9}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v10, "GPSLatitudeRef"

    const/4 v14, 0x2

    invoke-direct {v7, v10, v9, v14}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v10, "GPSLatitude"

    const/4 v11, 0x5

    invoke-direct {v9, v10, v14, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v12, "GPSLongitudeRef"

    const/4 v13, 0x3

    invoke-direct {v10, v12, v13, v14}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v13, "GPSLongitude"

    const/4 v14, 0x4

    invoke-direct {v12, v13, v14, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v13, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "GPSAltitudeRef"

    const/4 v15, 0x1

    invoke-direct {v13, v14, v11, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "GPSAltitude"

    move/from16 v18, v8

    const/4 v8, 0x6

    invoke-direct {v14, v15, v8, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "GPSTimeStamp"

    move-object/from16 v71, v0

    const/4 v0, 0x7

    invoke-direct {v8, v15, v0, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v11, "GPSSatellites"

    move-object/from16 v72, v7

    const/16 v7, 0x8

    const/4 v15, 0x2

    invoke-direct {v0, v11, v7, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v11, "GPSStatus"

    move-object/from16 v79, v0

    const/16 v0, 0x9

    invoke-direct {v7, v11, v0, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v11, "GPSMeasureMode"

    move-object/from16 v80, v7

    const/16 v7, 0xa

    invoke-direct {v0, v11, v7, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v11, "GPSDOP"

    const/16 v15, 0xb

    move-object/from16 v81, v0

    const/4 v0, 0x5

    invoke-direct {v7, v11, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v11, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "GPSSpeedRef"

    const/16 v0, 0xc

    move-object/from16 v82, v7

    const/4 v7, 0x2

    invoke-direct {v11, v15, v0, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "GPSSpeed"

    const/16 v7, 0xd

    move-object/from16 v78, v8

    const/4 v8, 0x5

    invoke-direct {v0, v15, v7, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "GPSTrackRef"

    move-object/from16 v84, v0

    const/4 v8, 0x2

    const/16 v0, 0xe

    invoke-direct {v7, v15, v0, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "GPSTrack"

    const/16 v8, 0xf

    move-object/from16 v85, v7

    const/4 v7, 0x5

    invoke-direct {v0, v15, v8, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "GPSImgDirectionRef"

    const/16 v7, 0x10

    move-object/from16 v86, v0

    const/4 v0, 0x2

    invoke-direct {v8, v15, v7, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "GPSImgDirection"

    const/16 v0, 0x11

    move-object/from16 v87, v8

    const/4 v8, 0x5

    invoke-direct {v7, v15, v0, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "GPSMapDatum"

    const/16 v15, 0x12

    move-object/from16 v88, v7

    const/4 v7, 0x2

    invoke-direct {v0, v8, v15, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "GPSDestLatitudeRef"

    move-object/from16 v89, v0

    const/16 v0, 0x13

    invoke-direct {v8, v15, v0, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "GPSDestLatitude"

    const/16 v7, 0x14

    move-object/from16 v90, v8

    const/4 v8, 0x5

    invoke-direct {v0, v15, v7, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "GPSDestLongitudeRef"

    const/16 v8, 0x15

    move-object/from16 v91, v0

    const/4 v0, 0x2

    invoke-direct {v7, v15, v8, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "GPSDestLongitude"

    const/16 v0, 0x16

    move-object/from16 v92, v7

    const/4 v7, 0x5

    invoke-direct {v8, v15, v0, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "GPSDestBearingRef"

    const/16 v7, 0x17

    move-object/from16 v93, v8

    const/4 v8, 0x2

    invoke-direct {v0, v15, v7, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "GPSDestBearing"

    const/16 v8, 0x18

    move-object/from16 v94, v0

    const/4 v0, 0x5

    invoke-direct {v7, v15, v8, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "GPSDestDistanceRef"

    const/16 v0, 0x19

    move-object/from16 v95, v7

    const/4 v7, 0x2

    invoke-direct {v8, v15, v0, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v7, "GPSDestDistance"

    const/16 v15, 0x1a

    move-object/from16 v96, v8

    const/4 v8, 0x5

    invoke-direct {v0, v7, v15, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "GPSProcessingMethod"

    const/16 v15, 0x1b

    move-object/from16 v97, v0

    const/4 v0, 0x7

    invoke-direct {v7, v8, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "GPSAreaInformation"

    move-object/from16 v98, v7

    const/16 v7, 0x1c

    invoke-direct {v8, v15, v7, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v7, "GPSDateStamp"

    const/16 v15, 0x1d

    move-object/from16 v99, v8

    const/4 v8, 0x2

    invoke-direct {v0, v7, v15, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "GPSDifferential"

    const/16 v8, 0x1e

    move-object/from16 v100, v0

    const/4 v0, 0x3

    invoke-direct {v7, v15, v8, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    move-object/from16 v101, v7

    move-object/from16 v73, v9

    move-object/from16 v74, v10

    move-object/from16 v83, v11

    move-object/from16 v75, v12

    move-object/from16 v76, v13

    move-object/from16 v77, v14

    filled-new-array/range {v71 .. v101}, [Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-result-object v71

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v7, "InteroperabilityIndex"

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-direct {v0, v7, v9, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    filled-new-array {v0}, [Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-result-object v72

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const/4 v7, 0x4

    const/16 v9, 0xfe

    invoke-direct {v0, v6, v9, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const/16 v15, 0xff

    invoke-direct {v6, v3, v15, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v7, "ThumbnailImageWidth"

    const/16 v8, 0x100

    invoke-direct {v3, v7, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v9, "ThumbnailImageLength"

    const/16 v10, 0x101

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const/16 v10, 0x102

    const/4 v12, 0x3

    invoke-direct {v9, v4, v10, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const/16 v10, 0x103

    invoke-direct {v4, v5, v10, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-object/from16 v10, v51

    const/16 v11, 0x106

    invoke-direct {v5, v10, v11, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-object/from16 v11, v49

    const/16 v13, 0x10e

    const/4 v14, 0x2

    invoke-direct {v10, v11, v13, v14}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v11, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-object/from16 v13, v50

    const/16 v15, 0x10f

    invoke-direct {v11, v13, v15, v14}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v13, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const/16 v15, 0x110

    invoke-direct {v13, v1, v15, v14}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-object/from16 v14, v52

    const/16 v15, 0x111

    invoke-direct {v1, v14, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-object/from16 v73, v0

    move-object/from16 v8, v53

    const/16 v0, 0x112

    invoke-direct {v15, v8, v0, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-object/from16 v83, v1

    move-object/from16 v8, v58

    const/16 v1, 0x115

    invoke-direct {v0, v8, v1, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-object/from16 v8, v54

    const/16 v12, 0x116

    invoke-direct {v1, v8, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v12, "StripByteCounts"

    move-object/from16 v85, v0

    const/16 v0, 0x117

    invoke-direct {v8, v12, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v12, "XResolution"

    move-object/from16 v86, v1

    const/16 v1, 0x11a

    move-object/from16 v75, v3

    const/4 v3, 0x5

    invoke-direct {v0, v12, v1, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v12, "YResolution"

    move-object/from16 v88, v0

    const/16 v0, 0x11b

    invoke-direct {v1, v12, v0, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v3, "PlanarConfiguration"

    const/16 v12, 0x11c

    move-object/from16 v89, v1

    const/4 v1, 0x3

    invoke-direct {v0, v3, v12, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v12, "ResolutionUnit"

    move-object/from16 v90, v0

    const/16 v0, 0x128

    invoke-direct {v3, v12, v0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v12, "TransferFunction"

    move-object/from16 v91, v3

    const/16 v3, 0x12d

    invoke-direct {v0, v12, v3, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v3, "Software"

    const/16 v12, 0x131

    move-object/from16 v92, v0

    const/4 v0, 0x2

    invoke-direct {v1, v3, v12, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v12, "DateTime"

    move-object/from16 v93, v1

    const/16 v1, 0x132

    invoke-direct {v3, v12, v1, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v12, "Artist"

    move-object/from16 v94, v3

    const/16 v3, 0x13b

    invoke-direct {v1, v12, v3, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v3, "WhitePoint"

    const/16 v12, 0x13e

    move-object/from16 v95, v1

    const/4 v1, 0x5

    invoke-direct {v0, v3, v12, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v12, "PrimaryChromaticities"

    move-object/from16 v96, v0

    const/16 v0, 0x13f

    invoke-direct {v3, v12, v0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-object/from16 v97, v3

    move-object/from16 v1, v56

    const/16 v3, 0x14a

    const/4 v12, 0x4

    invoke-direct {v0, v1, v3, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-object/from16 v98, v0

    move-object/from16 v78, v4

    move-object/from16 v0, v57

    const/16 v4, 0x201

    invoke-direct {v3, v0, v4, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-object/from16 v99, v3

    move-object/from16 v79, v5

    move-object/from16 v3, v60

    const/16 v5, 0x202

    invoke-direct {v4, v3, v5, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v12, "YCbCrCoefficients"

    move-object/from16 v100, v4

    const/16 v4, 0x211

    move-object/from16 v74, v6

    const/4 v6, 0x5

    invoke-direct {v5, v12, v4, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v6, "YCbCrSubSampling"

    const/16 v12, 0x212

    move-object/from16 v101, v5

    const/4 v5, 0x3

    invoke-direct {v4, v6, v12, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v12, "YCbCrPositioning"

    move-object/from16 v102, v4

    const/16 v4, 0x213

    invoke-direct {v6, v12, v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "ReferenceBlackWhite"

    const/16 v12, 0x214

    move-object/from16 v103, v6

    const/4 v6, 0x5

    invoke-direct {v4, v5, v12, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v6, "Copyright"

    const v12, 0x8298

    move-object/from16 v104, v4

    const/4 v4, 0x2

    invoke-direct {v5, v6, v12, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-object/from16 v105, v5

    move-object/from16 v6, v68

    const v5, 0x8769

    const/4 v12, 0x4

    invoke-direct {v4, v6, v5, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-object/from16 v106, v4

    const v4, 0x8825

    invoke-direct {v5, v2, v4, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v12, "DNGVersion"

    move-object/from16 v107, v5

    const v5, 0xc612

    move-object/from16 v76, v7

    const/4 v7, 0x1

    invoke-direct {v4, v12, v5, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v7, "DefaultCropSize"

    const v12, 0xc620

    invoke-direct {v5, v7, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;I)V

    move-object/from16 v108, v4

    move-object/from16 v109, v5

    move-object/from16 v87, v8

    move-object/from16 v77, v9

    move-object/from16 v80, v10

    move-object/from16 v81, v11

    move-object/from16 v82, v13

    move-object/from16 v84, v15

    filled-new-array/range {v73 .. v109}, [Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-result-object v73

    new-instance v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const/4 v7, 0x3

    const/16 v15, 0x111

    invoke-direct {v4, v14, v15, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/motorola/camera/photometadata/PhotoMetadata;->TAG_RAF_IMAGE_SIZE:Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    new-instance v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "ThumbnailImage"

    const/4 v7, 0x7

    const/16 v8, 0x100

    invoke-direct {v4, v5, v8, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v7, "CameraSettingsIFDPointer"

    const/16 v8, 0x2020

    const/4 v12, 0x4

    invoke-direct {v5, v7, v8, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v8, "ImageProcessingIFDPointer"

    const/16 v9, 0x2040

    invoke-direct {v7, v8, v9, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    filled-new-array {v4, v5, v7}, [Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-result-object v75

    new-instance v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "PreviewImageStart"

    const/16 v10, 0x101

    invoke-direct {v4, v5, v10, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v7, "PreviewImageLength"

    const/16 v10, 0x102

    invoke-direct {v5, v7, v10, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    filled-new-array {v4, v5}, [Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-result-object v76

    new-instance v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "AspectFrame"

    const/16 v7, 0x1113

    const/4 v8, 0x3

    invoke-direct {v4, v5, v7, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    filled-new-array {v4}, [Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-result-object v77

    new-instance v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "ColorSpace"

    const/16 v7, 0x37

    invoke-direct {v4, v5, v7, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    filled-new-array {v4}, [Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-result-object v78

    move-object/from16 v74, v69

    filled-new-array/range {v69 .. v78}, [[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-result-object v4

    sput-object v4, Lcom/motorola/camera/photometadata/PhotoMetadata;->EXIF_TAGS:[[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const/16 v4, 0x14a

    const/4 v12, 0x4

    invoke-direct {v7, v1, v4, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const v5, 0x8769

    invoke-direct {v8, v6, v5, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const v4, 0x8825

    invoke-direct {v9, v2, v4, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v1, "InteroperabilityIFDPointer"

    const v2, 0xa005

    invoke-direct {v10, v1, v2, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v11, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v1, "CameraSettingsIFDPointer"

    const/16 v2, 0x2020

    const/4 v15, 0x1

    invoke-direct {v11, v1, v2, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v1, "ImageProcessingIFDPointer"

    const/16 v2, 0x2040

    invoke-direct {v12, v1, v2, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    filled-new-array/range {v7 .. v12}, [Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->EXIF_POINTER_TAGS:[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    new-instance v1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const/16 v4, 0x201

    const/4 v12, 0x4

    invoke-direct {v1, v0, v4, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->JPEG_INTERCHANGE_FORMAT_TAG:Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const/16 v5, 0x202

    invoke-direct {v0, v3, v5, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    new-instance v0, Landroid/util/SparseArray;

    const/16 v7, 0xa

    invoke-direct {v0, v7}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->sExifTagMapsForReading:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v7}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->sExifTagMapsForWriting:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "SubjectDistance"

    const-string v2, "GPSTimeStamp"

    const-string v3, "FNumber"

    const-string v4, "DigitalZoomRatio"

    const-string v5, "ExposureTime"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->sTagSetForCompatibility:Ljava/util/HashSet;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->sExifPointerTagMap:Landroid/util/SparseIntArray;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->ASCII:Ljava/nio/charset/Charset;

    const-string v1, "Exif\u0000\u0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->IDENTIFIER_EXIF_APP1:[B

    const-string v1, "ICC_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->IDENTIFIER_ICC_APP2:[B

    const-string v1, "MPF\u0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->IDENTIFIER_MPF_APP2:[B

    const-string v1, "http:/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->IDENTIFIER_HTTP_APP1:[B

    const-string v1, "/ns.adobe.com/xap/1.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->IDENTIFIER_GCONTAINER_APP1:[B

    const-string v1, "MMIMETA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->IDENTIFIER_MMIMETA_APP6:[B

    const-string v1, "Item:Length=\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->GAINMAP_LENGTH:[B

    const-string v1, "\"/>\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->GAINMAP_END:[B

    const-string v1, "GainMap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->GAINMAP_TAG:[B

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    move/from16 v0, v18

    :goto_0
    sget-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->EXIF_TAGS:[[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/motorola/camera/photometadata/PhotoMetadata;->sExifTagMapsForReading:Landroid/util/SparseArray;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/photometadata/PhotoMetadata;->sExifTagMapsForWriting:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    aget-object v1, v1, v0

    array-length v2, v1

    move/from16 v3, v18

    :goto_1
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    sget-object v5, Lcom/motorola/camera/photometadata/PhotoMetadata;->sExifTagMapsForReading:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    iget v6, v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->number:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v5, Lcom/motorola/camera/photometadata/PhotoMetadata;->sExifTagMapsForWriting:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    iget-object v6, v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->sExifPointerTagMap:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->EXIF_POINTER_TAGS:[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    aget-object v2, v1, v18

    iget v2, v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->number:I

    const/4 v8, 0x5

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v9, 0x1

    aget-object v2, v1, v9

    iget v2, v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->number:I

    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v8, 0x2

    aget-object v2, v1, v8

    iget v2, v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->number:I

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v7, 0x3

    aget-object v2, v1, v7

    iget v2, v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->number:I

    invoke-virtual {v0, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v48, 0x4

    aget-object v2, v1, v48

    iget v2, v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->number:I

    const/4 v7, 0x7

    invoke-virtual {v0, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v55, 0x5

    aget-object v1, v1, v55

    iget v1, v1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->number:I

    const/16 v7, 0x8

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    const-string v0, "^[a-zA-Z0-9\\-_.]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    const-string v0, ".*[1-9].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    :array_2
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    :array_3
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    :array_4
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_6
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_7
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    sget-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->EXIF_TAGS:[[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    array-length v2, v1

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributesOffsets:Ljava/util/HashSet;

    .line 30
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    .line 32
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mApp6Data:Ljava/util/ArrayList;

    .line 33
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAppData:Ljava/util/HashMap;

    .line 34
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrGContainerApp1:[B

    .line 35
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrIccProfileApp2:[B

    .line 36
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrMpfApp2:[B

    if-eqz p1, :cond_0

    .line 37
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 38
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    .line 39
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mFilename:Ljava/lang/String;

    .line 40
    :try_start_0
    sget v1, Landroid/system/OsConstants;->SEEK_CUR:I

    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3, v1}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    iput-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 42
    :try_start_1
    invoke-static {p1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object p1
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 43
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :catch_1
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    :goto_0
    const/4 v1, 0x0

    .line 45
    iput-boolean v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mIsInputStream:Z

    .line 46
    :try_start_2
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 49
    throw p0

    .line 50
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "fileDescriptor cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 6

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    sget-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->EXIF_TAGS:[[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    array-length v2, v1

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributesOffsets:Ljava/util/HashSet;

    .line 54
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    .line 56
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mApp6Data:Ljava/util/ArrayList;

    .line 57
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAppData:Ljava/util/HashMap;

    .line 58
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrGContainerApp1:[B

    .line 59
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrIccProfileApp2:[B

    .line 60
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrMpfApp2:[B

    .line 61
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mFilename:Ljava/lang/String;

    .line 62
    instance-of v1, p1, Ljava/io/ByteArrayInputStream;

    if-eqz v1, :cond_0

    .line 63
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 64
    move-object v1, p1

    check-cast v1, Ljava/io/ByteArrayInputStream;

    iput-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    .line 65
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 66
    :cond_0
    instance-of v1, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v1, :cond_1

    .line 67
    move-object v1, p1

    check-cast v1, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 68
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    .line 69
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 70
    :cond_1
    instance-of v1, p1, Ljava/io/FileInputStream;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Ljava/io/FileInputStream;

    .line 71
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 72
    :try_start_0
    sget v3, Landroid/system/OsConstants;->SEEK_CUR:I

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5, v3}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 74
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    .line 75
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 76
    :catch_0
    :cond_2
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 77
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    .line 78
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    :goto_0
    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mIsInputStream:Z

    .line 80
    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->loadAttributes(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    sget-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->EXIF_TAGS:[[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    array-length v2, v1

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributesOffsets:Ljava/util/HashSet;

    .line 4
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    .line 6
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mApp6Data:Ljava/util/ArrayList;

    .line 7
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAppData:Ljava/util/HashMap;

    .line 8
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrGContainerApp1:[B

    .line 9
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrIccProfileApp2:[B

    .line 10
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrMpfApp2:[B

    if-eqz p1, :cond_1

    .line 11
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 12
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    .line 13
    iput-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mFilename:Ljava/lang/String;

    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mIsInputStream:Z

    .line 15
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    sget v3, Landroid/system/OsConstants;->SEEK_CUR:I

    const-wide/16 v4, 0x0

    invoke-static {p1, v4, v5, v3}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x1

    goto :goto_1

    :goto_0
    move-object v0, v2

    goto :goto_3

    :catch_0
    :goto_1
    if-eqz v1, :cond_0

    .line 18
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 19
    :cond_0
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 20
    :goto_2
    invoke-virtual {p0, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 21
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 22
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception p0

    .line 23
    :goto_3
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 24
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 25
    throw p0

    .line 26
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "filename cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convertToLongArray(Ljava/io/Serializable;)[J
    .locals 4

    instance-of v0, p0, [I

    if-eqz v0, :cond_1

    check-cast p0, [I

    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget v2, p0, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    instance-of v0, p0, [J

    if-eqz v0, :cond_2

    check-cast p0, [J

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;
    .locals 13

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_9

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object v0, p0, v9

    invoke-static {v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_0

    return-object v0

    :cond_0
    :goto_0
    array-length v1, p0

    if-ge v10, v1, :cond_8

    aget-object v1, p0, v10

    invoke-static {v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eq v2, v3, :cond_2

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v5

    goto :goto_2

    :cond_2
    :goto_1
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_2
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v5, :cond_4

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eq v3, v7, :cond_3

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v1, v7, :cond_4

    :cond_3
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    :cond_4
    move v1, v5

    :goto_3
    if-ne v2, v5, :cond_5

    if-ne v1, v5, :cond_5

    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_5
    if-ne v2, v5, :cond_6

    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    if-ne v1, v5, :cond_7

    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_8
    return-object v0

    :cond_9
    const-string v5, "/"

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const-wide/16 v11, 0x0

    if-eqz v7, :cond_f

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    if-ne v0, v3, :cond_e

    :try_start_0
    aget-object v0, p0, v9

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-long v7, v7

    aget-object p0, p0, v10

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-long v9, v9

    cmp-long p0, v7, v11

    if-ltz p0, :cond_d

    cmp-long p0, v9, v11

    if-gez p0, :cond_a

    goto :goto_6

    :cond_a
    const-wide/32 v11, 0x7fffffff

    cmp-long p0, v7, v11

    if-gtz p0, :cond_c

    cmp-long p0, v9, v11

    if-lez p0, :cond_b

    goto :goto_5

    :cond_b
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_c
    :goto_5
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_d
    :goto_6
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_e
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_f
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v3, v1, v11

    if-ltz v3, :cond_10

    const-wide/32 v7, 0xffff

    cmp-long v1, v1, v7

    if-gtz v1, :cond_10

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_10
    if-gez v3, :cond_11

    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_11
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    :try_start_2
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    new-instance p0, Landroid/util/Pair;

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static readByteOrder(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readShort()S

    move-result p0

    const/16 v0, 0x4949

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4d4d

    if-ne p0, v0, :cond_0

    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid byte order: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object p0
.end method


# virtual methods
.method public final addApp6ByteArray([B)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mApp6Data:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mApp6Data:Ljava/util/ArrayList;

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mApp6Data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mApp6Data:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mApp6Data:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public final addAppByteArray(B[B)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAppData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAppData:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAppData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAppData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAppData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addDefaultValuesForCompatibility()V
    .locals 6

    const-string v0, "DateTimeOriginal"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "DateTime"

    invoke-virtual {p0, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static {v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createString(Ljava/lang/String;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "ImageWidth"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iget-object v5, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v3, v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "ImageLength"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iget-object v5, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v3, v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "Orientation"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iget-object v5, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v1, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "LightSource"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v3, v4, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public final addDisplayP3App2ByteArray()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAppData:Ljava/util/HashMap;

    const/16 v1, -0x1e

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/motorola/camera/photometadata/MarkerMetadata;->MARKER_APP2_DATA:[B

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->addAppByteArray(B[B)V

    return-void
.end method

.method public final copyPhotoMetadata(Lcom/motorola/camera/photometadata/PhotoMetadata;)V
    .locals 1

    iget-object v0, p1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    iget-object v0, p1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    iget-object v0, p1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    iget-object v0, p1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mApp6Data:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mApp6Data:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAppData:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAppData:Ljava/util/HashMap;

    return-void
.end method

.method public final getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/motorola/camera/photometadata/PhotoMetadata;->EXIF_TAGS:[[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    array-length v2, v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_6

    sget-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v1, "GPSTimeStamp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->format:I

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    const/16 v1, 0xa

    if-eq p1, v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, [Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    array-length p1, p0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    goto :goto_2

    :cond_4
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    aget-object v0, p0, v0

    iget-wide v1, v0, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;->numerator:J

    long-to-float v1, v1

    iget-wide v2, v0, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;->denominator:J

    long-to-float v0, v2

    div-float/2addr v1, v0

    float-to-int v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    iget-wide v2, v1, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;->numerator:J

    long-to-float v2, v2

    iget-wide v3, v1, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;->denominator:J

    long-to-float v1, v3

    div-float/2addr v2, v1

    float-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aget-object p0, p0, v2

    iget-wide v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;->numerator:J

    long-to-float v2, v2

    iget-wide v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;->denominator:J

    long-to-float p0, v3

    div-float/2addr v2, p0

    float-to-int p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02d:%02d:%02d"

    invoke-static {p1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_6
    :goto_2
    return-object v3
.end method

.method public final getAttributeInt(ILjava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->EXIF_TAGS:[[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :goto_2
    return p1
.end method

.method public final getHeifAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V
    .locals 7

    const-string/jumbo v0, "yes"

    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$1;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Landroidx/exifinterface/media/ExifInterface$1;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    const/16 p1, 0x1a

    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1d

    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x12

    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    move-object v0, p1

    move-object v2, v0

    :goto_0
    const/4 v3, 0x0

    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "ImageWidth"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v6, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {p1, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object p1

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v4, "ImageLength"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v5, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v2, :cond_7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_6

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_5

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/16 p1, 0x8

    goto :goto_1

    :cond_5
    const/4 p1, 0x3

    goto :goto_1

    :cond_6
    const/4 p1, 0x6

    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "Orientation"

    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {p1, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void

    :goto_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw p0
.end method

.method public final getJpegAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;II)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "PhotoMetadata"

    sget-boolean v5, Lcom/motorola/camera/photometadata/PhotoMetadata;->DEBUG_READ_WRITE:Z

    if-eqz v5, :cond_0

    const-string v6, ">>>>>>>>>> getJpegAttributes"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v6, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    int-to-long v6, v2

    invoke-virtual {v1, v6, v7}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readByte()B

    move-result v6

    const-string v7, "Invalid marker: "

    const/4 v8, -0x1

    if-ne v6, v8, :cond_1d

    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readByte()B

    move-result v9

    const/16 v10, -0x28

    if-ne v9, v10, :cond_1c

    add-int/lit8 v2, v2, 0x2

    :goto_0
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readByte()B

    move-result v6

    if-ne v6, v8, :cond_1b

    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readByte()B

    move-result v6

    const/16 v7, -0x27

    if-eq v6, v7, :cond_1a

    const/16 v7, -0x26

    if-ne v6, v7, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v7

    add-int/lit8 v9, v7, -0x2

    add-int/lit8 v10, v2, 0x4

    if-eqz v5, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Find maker:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v12, v6, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v11, "Invalid length"

    if-ltz v9, :cond_19

    const/16 v12, -0x1f

    const/4 v13, 0x0

    const/16 v14, 0x14

    const/4 v15, 0x1

    const/16 v16, 0x0

    const-string v8, "Invalid exif"

    if-eq v6, v12, :cond_d

    const/16 v2, -0x1e

    if-eq v6, v2, :cond_8

    const/4 v12, -0x2

    if-eq v6, v12, :cond_6

    packed-switch v6, :pswitch_data_0

    packed-switch v6, :pswitch_data_1

    packed-switch v6, :pswitch_data_2

    packed-switch v6, :pswitch_data_3

    packed-switch v6, :pswitch_data_4

    goto/16 :goto_2

    :pswitch_0
    new-array v2, v9, [B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-ne v6, v9, :cond_4

    add-int/2addr v10, v9

    invoke-virtual {v0, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->addApp6ByteArray([B)V

    :cond_3
    :goto_1
    move/from16 v9, v16

    goto/16 :goto_2

    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-virtual {v1, v15}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v2

    if-ne v2, v15, :cond_5

    iget-object v2, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v6

    int-to-long v8, v6

    iget-object v6, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v8, v9, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v6

    const-string v8, "ImageLength"

    invoke-virtual {v2, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v6

    int-to-long v8, v6

    iget-object v6, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v8, v9, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v6

    const-string v8, "ImageWidth"

    invoke-virtual {v2, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v7, -0x7

    goto/16 :goto_2

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid SOFx"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-array v2, v9, [B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-ne v6, v9, :cond_7

    const-string v6, "UserComment"

    invoke-virtual {v0, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    iget-object v7, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v7, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/motorola/camera/photometadata/PhotoMetadata;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v8, v2, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createString(Ljava/lang/String;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v2

    invoke-virtual {v7, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :pswitch_2
    new-array v7, v9, [B

    invoke-virtual {v1, v7}, Ljava/io/InputStream;->read([B)I

    move-result v12

    if-ne v12, v9, :cond_c

    if-eqz v5, :cond_9

    new-instance v8, Ljava/lang/String;

    invoke-static {v7, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/lang/String;-><init>([B)V

    const-string v12, " data:"

    invoke-virtual {v12, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-ne v6, v2, :cond_b

    iget-object v2, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrGContainerApp1:[B

    if-eqz v2, :cond_b

    sget-object v2, Lcom/motorola/camera/photometadata/PhotoMetadata;->IDENTIFIER_MPF_APP2:[B

    array-length v8, v2

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    invoke-static {v8, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_a

    iput-object v7, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrMpfApp2:[B

    add-int/2addr v10, v9

    iput-object v13, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrIccProfileApp2:[B

    goto/16 :goto_1

    :cond_a
    sget-object v2, Lcom/motorola/camera/photometadata/PhotoMetadata;->IDENTIFIER_ICC_APP2:[B

    invoke-static {v8, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_b

    iput-object v7, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrIccProfileApp2:[B

    :cond_b
    add-int/2addr v10, v9

    invoke-virtual {v0, v6, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata;->addAppByteArray(B[B)V

    goto/16 :goto_1

    :cond_c
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const/4 v6, 0x6

    if-ge v9, v6, :cond_e

    goto/16 :goto_2

    :cond_e
    new-array v9, v6, [B

    invoke-virtual {v1, v9}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-ne v10, v6, :cond_18

    add-int/lit8 v10, v2, 0xa

    add-int/lit8 v2, v7, -0x8

    sget-object v6, Lcom/motorola/camera/photometadata/PhotoMetadata;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v9, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    const-string v7, " MARKER_APP1 data:"

    if-nez v6, :cond_12

    sget-object v6, Lcom/motorola/camera/photometadata/PhotoMetadata;->IDENTIFIER_HTTP_APP1:[B

    invoke-static {v9, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_11

    new-array v6, v2, [B

    invoke-virtual {v1, v6}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-ne v8, v2, :cond_10

    sget-object v8, Lcom/motorola/camera/photometadata/PhotoMetadata;->IDENTIFIER_GCONTAINER_APP1:[B

    array-length v9, v8

    invoke-static {v6, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_f

    sget-object v8, Lcom/motorola/camera/photometadata/PhotoMetadata;->GAINMAP_TAG:[B

    invoke-static {v6, v8}, Lcom/motorola/camera/saving/XmpUtil;->containByte([B[B)Z

    move-result v8

    if-eqz v8, :cond_f

    iput-object v6, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrGContainerApp1:[B

    :cond_f
    add-int/2addr v10, v2

    if-eqz v5, :cond_3

    new-instance v2, Ljava/lang/String;

    invoke-static {v6, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid http://"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move v9, v2

    goto :goto_2

    :cond_12
    if-eqz v5, :cond_13

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    if-lez v2, :cond_17

    iput v10, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifOffset:I

    new-array v6, v2, [B

    invoke-virtual {v1, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-ne v7, v2, :cond_16

    add-int/2addr v10, v2

    new-instance v7, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;

    invoke-direct {v7, v6}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;-><init>([B)V

    invoke-virtual {v0, v7, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->parseTiffHeaders(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;I)V

    invoke-virtual {v0, v7, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->readImageFileDirectory(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;I)V

    iget-object v2, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v6, "MakerNote"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz v2, :cond_3

    new-instance v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    iget-object v7, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v6, v7}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v6, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    :try_start_0
    iget-object v2, v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->bytes:[B

    invoke-virtual {v6, v2}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->parse([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    iput-object v13, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    goto/16 :goto_1

    :goto_2
    if-ltz v9, :cond_15

    invoke-virtual {v1, v9}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v2

    if-ne v2, v9, :cond_14

    add-int v2, v10, v9

    const/4 v8, -0x1

    goto/16 :goto_0

    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid JPEG segment"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_3
    iget-object v0, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    iput-object v0, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    return-void

    :cond_1b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid marker:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v2, v6, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v2, v6, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v2, v6, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch -0x1c
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final getMimeType(Ljava/io/BufferedInputStream;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    new-array v3, v2, [B

    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->reset()V

    const/4 v4, 0x0

    :goto_0
    sget-object v5, Lcom/motorola/camera/photometadata/PhotoMetadata;->JPEG_SIGNATURE:[B

    array-length v6, v5

    const/4 v7, 0x4

    if-ge v4, v6, :cond_13

    aget-byte v6, v3, v4

    aget-byte v5, v5, v4

    if-eq v6, v5, :cond_12

    const-string v4, "FUJIFILMCCD-RAW"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_11

    aget-byte v6, v3, v5

    aget-byte v8, v4, v5

    if-eq v6, v8, :cond_10

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;

    invoke-direct {v5, v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v4, v5, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v5}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result v4

    int-to-long v8, v4

    new-array v4, v7, [B

    invoke-virtual {v5, v4}, Ljava/io/InputStream;->read([B)I

    sget-object v6, Lcom/motorola/camera/photometadata/PhotoMetadata;->HEIF_TYPE_FTYP:[B

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_0

    :goto_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    const/16 p1, 0x0

    goto/16 :goto_c

    :cond_0
    const-wide/16 v10, 0x1

    cmp-long v4, v8, v10

    const-wide/16 v12, 0x8

    if-nez v4, :cond_2

    :try_start_2
    invoke-virtual {v5}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readLong()J

    move-result-wide v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v14, 0x10

    cmp-long v4, v8, v14

    if-gez v4, :cond_1

    goto :goto_2

    :cond_1
    :goto_3
    const/16 p1, 0x0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v4, v5

    goto/16 :goto_a

    :catch_0
    move-object v4, v5

    :catch_1
    const/16 p1, 0x0

    goto/16 :goto_b

    :cond_2
    move-wide v14, v12

    goto :goto_3

    :goto_4
    int-to-long v1, v2

    cmp-long v4, v8, v1

    if-lez v4, :cond_3

    move-wide v8, v1

    :cond_3
    sub-long/2addr v8, v14

    cmp-long v1, v8, v12

    if-gez v1, :cond_5

    :cond_4
    :goto_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_c

    :cond_5
    :try_start_3
    new-array v1, v7, [B

    const-wide/16 v12, 0x0

    move/from16 v2, p1

    move v4, v2

    :goto_6
    const-wide/16 v14, 0x4

    div-long v14, v8, v14

    cmp-long v6, v12, v14

    if-gez v6, :cond_4

    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-eq v6, v7, :cond_6

    goto :goto_5

    :cond_6
    cmp-long v6, v12, v10

    if-nez v6, :cond_7

    goto :goto_8

    :cond_7
    sget-object v6, Lcom/motorola/camera/photometadata/PhotoMetadata;->HEIF_BRAND_MIF1:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    const/4 v14, 0x1

    if-eqz v6, :cond_8

    move v2, v14

    goto :goto_7

    :cond_8
    sget-object v6, Lcom/motorola/camera/photometadata/PhotoMetadata;->HEIF_BRAND_HEIC:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_9

    move v4, v14

    :cond_9
    :goto_7
    if-eqz v2, :cond_a

    if-eqz v4, :cond_a

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    const/16 v0, 0xc

    return v0

    :cond_a
    :goto_8
    add-long/2addr v12, v10

    goto :goto_6

    :catch_2
    :goto_9
    move-object v4, v5

    goto :goto_b

    :catch_3
    const/16 p1, 0x0

    goto :goto_9

    :catchall_1
    move-exception v0

    :goto_a
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_b
    throw v0

    :goto_b
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_c
    :goto_c
    new-instance v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;

    invoke-direct {v1, v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;-><init>([B)V

    invoke-static {v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->readByteOrder(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    iput-object v2, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readShort()S

    move-result v1

    const/16 v2, 0x4f52

    if-eq v1, v2, :cond_f

    const/16 v2, 0x5352

    if-ne v1, v2, :cond_d

    goto :goto_d

    :cond_d
    new-instance v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;

    invoke-direct {v1, v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;-><init>([B)V

    invoke-static {v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->readByteOrder(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    iput-object v2, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readShort()S

    move-result v0

    const/16 v1, 0x55

    if-ne v0, v1, :cond_e

    const/16 v0, 0xa

    return v0

    :cond_e
    return p1

    :cond_f
    :goto_d
    const/4 v0, 0x7

    return v0

    :cond_10
    const/16 p1, 0x0

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_11
    const/16 v0, 0x9

    return v0

    :cond_12
    const/16 p1, 0x0

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_13
    return v7
.end method

.method public final getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->get(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getOrfAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getRawAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V

    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v1, "MakerNote"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz p1, :cond_4

    new-instance v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;

    iget-object p1, p1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->bytes:[B

    invoke-direct {v1, p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;-><init>([B)V

    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    iput-object p1, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object p1, Lcom/motorola/camera/photometadata/PhotoMetadata;->ORF_MAKER_NOTE_HEADER_1:[B

    array-length v2, p1

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readFully([B)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    sget-object v3, Lcom/motorola/camera/photometadata/PhotoMetadata;->ORF_MAKER_NOTE_HEADER_2:[B

    array-length v4, v3

    new-array v4, v4, [B

    invoke-virtual {v1, v4}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readFully([B)V

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    goto :goto_0

    :cond_0
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v2, 0xc

    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    :cond_1
    :goto_0
    const/4 p1, 0x6

    invoke-virtual {p0, v1, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->readImageFileDirectory(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;I)V

    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v2, "PreviewImageStart"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "PreviewImageLength"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "JPEGInterchangeFormat"

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v2, "JPEGInterchangeFormatLength"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v1, "AspectFrame"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, [I

    const/4 v1, 0x2

    aget v1, p1, v1

    const/4 v2, 0x0

    aget v3, p1, v2

    if-le v1, v3, :cond_4

    const/4 v4, 0x3

    aget v4, p1, v4

    aget p1, p1, v0

    if-le v4, p1, :cond_4

    sub-int/2addr v1, v3

    add-int/2addr v1, v0

    sub-int/2addr v4, p1

    add-int/2addr v4, v0

    if-ge v1, v4, :cond_3

    add-int/2addr v1, v4

    sub-int v4, v1, v4

    sub-int/2addr v1, v4

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v1, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v4, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "ImageWidth"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    const-string p1, "ImageLength"

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public final getRafAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V
    .locals 6

    const/16 v0, 0x54

    invoke-virtual {p1, v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->skipBytes(I)I

    const/4 v0, 0x4

    new-array v1, v0, [B

    new-array v2, v0, [B

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {p1, v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->skipBytes(I)I

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {p0, p1, v0, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getJpegAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;II)V

    int-to-long v0, v1

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v3

    invoke-virtual {p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v4

    sget-object v5, Lcom/motorola/camera/photometadata/PhotoMetadata;->TAG_RAF_IMAGE_SIZE:Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    iget v5, v5, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->number:I

    if-ne v3, v5, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readShort()S

    move-result v0

    invoke-virtual {p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readShort()S

    move-result p1

    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {p1, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object p1

    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "ImageLength"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    const-string v0, "ImageWidth"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p1, v4}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->skipBytes(I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getRawAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V
    .locals 7

    iget-object v0, p1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->parseTiffHeaders(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->readImageFileDirectory(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;I)V

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->updateImageSizeValues(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;I)V

    const/4 v1, 0x5

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->updateImageSizeValues(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;I)V

    const/4 v2, 0x4

    invoke-virtual {p0, p1, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->updateImageSizeValues(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;I)V

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->swapBasedOnImageSize(II)V

    invoke-virtual {p0, v0, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->swapBasedOnImageSize(II)V

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->swapBasedOnImageSize(II)V

    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v4, "PixelXDimension"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    iget-object v4, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "PixelYDimension"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz p1, :cond_0

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "ImageWidth"

    invoke-virtual {v5, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "ImageLength"

    invoke-virtual {p1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->isThumbnail(Ljava/util/HashMap;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->isThumbnail(Ljava/util/HashMap;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "PhotoMetadata"

    const-string v0, "No image meets the size requirements of a thumbnail image."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMimeType:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "MakerNote"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz p1, :cond_3

    new-instance v0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;

    iget-object p1, p1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->bytes:[B

    invoke-direct {v0, p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;-><init>([B)V

    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    iput-object p1, v0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    const/16 p1, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->readImageFileDirectory(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;I)V

    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "ColorSpace"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final getRw2Attributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getRawAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V

    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "JpgFromRaw"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mRw2JpgFromRawOffset:I

    const/4 v2, 0x5

    invoke-virtual {p0, p1, v0, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getJpegAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;II)V

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "ISO"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "ISOSpeedRatings"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 7

    iget-boolean v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mHasThumbnail:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getThumbnailBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    :cond_1
    iget v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailCompression:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    new-array v1, v0, [I

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    mul-int/lit8 v4, v2, 0x3

    aget-byte v5, v3, v4

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v3, v6

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    add-int/2addr v5, v3

    aput v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "ImageLength"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    iget-object v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "ImageWidth"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p0, v0, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    iget p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailLength:I

    invoke-static {v0, v2, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final getThumbnailBytes()[B
    .locals 7

    const-string v0, "PhotoMetadata"

    iget-boolean v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mHasThumbnail:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v2, v1

    goto/16 :goto_3

    :catch_0
    move-exception p0

    goto/16 :goto_2

    :cond_2
    const-string p0, "Cannot read thumbnail from byte array without mark/reset support"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object v2

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_5

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    goto :goto_1

    :cond_4
    const-string p0, "Cannot read thumbnail from inputstream without mark/reset support"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object v2

    :cond_5
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mFilename:Ljava/lang/String;

    if-eqz v1, :cond_6

    :try_start_4
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v1, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_7

    invoke-static {v1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v1

    sget v3, Landroid/system/OsConstants;->SEEK_SET:I

    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5, v3}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :cond_7
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_a

    :try_start_5
    iget v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailOffset:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    iget v5, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailOffset:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    int-to-long v5, v5

    cmp-long v3, v3, v5

    const-string v4, "Corrupted image"

    if-nez v3, :cond_9

    :try_start_6
    iget v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailLength:I

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    iget v6, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailLength:I

    if-ne v5, v6, :cond_8

    iput-object v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object v3

    :cond_8
    :try_start_7
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_2
    :try_start_8
    const-string v3, "Encountered exception while getting thumbnail"

    invoke-static {v0, v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object v2

    :goto_3
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method public final handleThumbnailFromJfif(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 3

    const-string v0, "JPEGInterchangeFormat"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    const-string v1, "JPEGInterchangeFormatLength"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p2

    iget-object v1, p1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMimeType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mOrfMakerNoteOffset:I

    :goto_0
    add-int/2addr v0, v1

    goto :goto_2

    :cond_1
    :goto_1
    iget v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifOffset:I

    goto :goto_0

    :cond_2
    :goto_2
    if-lez v0, :cond_3

    if-lez p2, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mHasThumbnail:Z

    iput v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailOffset:I

    iput p2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailLength:I

    const/4 v1, 0x6

    iput v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailCompression:I

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mFilename:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v1, :cond_3

    new-array p2, p2, [B

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    invoke-virtual {p1, p2}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readFully([B)V

    iput-object p2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    :cond_3
    return-void
.end method

.method public final isThumbnail(Ljava/util/HashMap;)Z
    .locals 3

    const-string v0, "ImageLength"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    const-string v1, "ImageWidth"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p0

    const/16 p1, 0x200

    if-gt v0, p1, :cond_0

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final isUltraHdr()Z
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrGContainerApp1:[B

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrMpfApp2:[B

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final loadAttributes(Ljava/io/InputStream;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    sget-object v2, Lcom/motorola/camera/photometadata/PhotoMetadata;->EXIF_TAGS:[[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMimeType(Ljava/io/BufferedInputStream;)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMimeType:I

    new-instance p1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;

    invoke-direct {p1, v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    iget v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMimeType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getHeifAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getRw2Attributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getRafAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getOrfAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, p1, v0, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getJpegAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;II)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getRawAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setThumbnailData(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mIsSupportedFile:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->addDefaultValuesForCompatibility()V

    return-void

    :catch_0
    :try_start_1
    iput-boolean v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mIsSupportedFile:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->addDefaultValuesForCompatibility()V

    return-void

    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->addDefaultValuesForCompatibility()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public final parseTiffHeaders(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;I)V
    .locals 2

    invoke-static {p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->readByteOrder(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    iput-object v0, p1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v0

    iget p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMimeType:I

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/16 v1, 0xa

    if-eq p0, v1, :cond_1

    const/16 p0, 0x2a

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid start code: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result p0

    const/16 v0, 0x8

    if-lt p0, v0, :cond_4

    if-ge p0, p2, :cond_4

    add-int/lit8 p0, p0, -0x8

    if-lez p0, :cond_3

    invoke-virtual {p1, p0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->skipBytes(I)I

    move-result p1

    if-ne p1, p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Couldn\'t jump to first Ifd: "

    invoke-static {p0, p2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid first Ifd offset: "

    invoke-static {p0, p2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final readImageFileDirectory(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;I)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget v3, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v3, v3, 0x2

    iget v4, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mLength:I

    if-le v3, v4, :cond_0

    goto/16 :goto_d

    :cond_0
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readShort()S

    move-result v3

    iget v5, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    mul-int/lit8 v6, v3, 0xc

    add-int/2addr v6, v5

    if-gt v6, v4, :cond_1f

    if-gtz v3, :cond_1

    goto/16 :goto_d

    :cond_1
    const/4 v6, 0x0

    :goto_0
    iget-object v7, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributesOffsets:Ljava/util/HashSet;

    const-string v10, "PhotoMetadata"

    const/4 v11, 0x4

    if-ge v6, v3, :cond_1b

    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v12

    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v13

    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result v14

    iget v15, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    add-int/2addr v15, v11

    move/from16 v16, v6

    int-to-long v5, v15

    sget-object v15, Lcom/motorola/camera/photometadata/PhotoMetadata;->sExifTagMapsForReading:Landroid/util/SparseArray;

    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    invoke-virtual {v15, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    if-nez v15, :cond_2

    const-wide/16 v17, 0x0

    const-string v8, "Skip the tag entry since tag number is not defined: "

    invoke-static {v8, v12, v10}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    move/from16 v19, v12

    goto :goto_4

    :cond_2
    const-wide/16 v17, 0x0

    if-lez v13, :cond_3

    sget-object v8, Lcom/motorola/camera/photometadata/PhotoMetadata;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    array-length v9, v8

    if-lt v13, v9, :cond_4

    :cond_3
    move/from16 v19, v12

    goto :goto_3

    :cond_4
    move/from16 v19, v12

    int-to-long v11, v14

    aget v8, v8, v13

    move-object/from16 v20, v10

    int-to-long v9, v8

    mul-long/2addr v11, v9

    cmp-long v8, v11, v17

    if-ltz v8, :cond_6

    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v11, v8

    if-lez v8, :cond_5

    goto :goto_1

    :cond_5
    const/4 v8, 0x1

    move-object/from16 v10, v20

    goto :goto_5

    :cond_6
    :goto_1
    const-string v8, "Skip the tag entry since the number of components is invalid: "

    move-object/from16 v10, v20

    invoke-static {v8, v14, v10}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    :goto_2
    const/4 v8, 0x0

    goto :goto_5

    :goto_3
    const-string v8, "Skip the tag entry since data format is invalid: "

    invoke-static {v8, v13, v10}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    :goto_4
    move-wide/from16 v11, v17

    goto :goto_2

    :goto_5
    if-nez v8, :cond_7

    invoke-virtual {v1, v5, v6}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    move v11, v2

    move/from16 v20, v3

    goto/16 :goto_c

    :cond_7
    const-wide/16 v8, 0x4

    cmp-long v8, v11, v8

    const-string v9, "Compression"

    if-lez v8, :cond_d

    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result v8

    move/from16 v20, v3

    iget v3, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMimeType:I

    move-wide/from16 v21, v11

    const/4 v11, 0x7

    if-ne v3, v11, :cond_a

    iget-object v3, v15, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    const-string v11, "MakerNote"

    if-ne v3, v11, :cond_9

    iput v8, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mOrfMakerNoteOffset:I

    :cond_8
    move-object v12, v9

    move/from16 v23, v14

    goto :goto_6

    :cond_9
    const/4 v11, 0x6

    if-ne v2, v11, :cond_8

    const-string v12, "ThumbnailImage"

    if-ne v3, v12, :cond_8

    iput v8, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mOrfThumbnailOffset:I

    iput v14, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mOrfThumbnailLength:I

    iget-object v3, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v11, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v3

    iget v11, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mOrfThumbnailOffset:I

    int-to-long v11, v11

    iget-object v2, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v11, v12, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v2

    iget v11, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mOrfThumbnailLength:I

    int-to-long v11, v11

    move/from16 v23, v14

    iget-object v14, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v11, v12, v14}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v11

    iget-object v12, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v14, 0x4

    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v12, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v12, "JPEGInterchangeFormat"

    invoke-virtual {v3, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v9

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "JPEGInterchangeFormatLength"

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_a
    move-object v12, v9

    move/from16 v23, v14

    const/16 v2, 0xa

    if-ne v3, v2, :cond_b

    iget-object v2, v15, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    const-string v3, "JpgFromRaw"

    if-ne v2, v3, :cond_b

    iput v8, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mRw2JpgFromRawOffset:I

    :cond_b
    :goto_6
    int-to-long v2, v8

    add-long v24, v2, v21

    move-object v11, v10

    int-to-long v9, v4

    cmp-long v9, v24, v9

    if-gtz v9, :cond_c

    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    move-object v10, v11

    goto :goto_8

    :cond_c
    const-string v2, "Skip the tag entry since data offset is invalid: "

    move-object v10, v11

    invoke-static {v2, v8, v10}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    :goto_7
    move/from16 v11, p2

    goto/16 :goto_c

    :cond_d
    move/from16 v20, v3

    move-wide/from16 v21, v11

    move/from16 v23, v14

    move-object v12, v9

    :goto_8
    sget-object v2, Lcom/motorola/camera/photometadata/PhotoMetadata;->sExifPointerTagMap:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    move/from16 v8, v19

    invoke-virtual {v2, v8, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    const/16 v8, 0x8

    const/4 v9, 0x3

    if-eq v2, v3, :cond_14

    if-eq v13, v9, :cond_11

    const/4 v9, 0x4

    if-eq v13, v9, :cond_10

    if-eq v13, v8, :cond_f

    const/16 v3, 0x9

    if-eq v13, v3, :cond_e

    const/16 v3, 0xd

    if-eq v13, v3, :cond_e

    const-wide/16 v8, -0x1

    goto :goto_a

    :cond_e
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result v3

    :goto_9
    int-to-long v8, v3

    goto :goto_a

    :cond_f
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readShort()S

    move-result v3

    goto :goto_9

    :cond_10
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result v3

    int-to-long v8, v3

    const-wide v11, 0xffffffffL

    and-long/2addr v8, v11

    goto :goto_a

    :cond_11
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v3

    goto :goto_9

    :goto_a
    cmp-long v3, v8, v17

    if-lez v3, :cond_13

    int-to-long v11, v4

    cmp-long v3, v8, v11

    if-gez v3, :cond_13

    long-to-int v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    iget v3, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v8, v9}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->readImageFileDirectory(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;I)V

    goto :goto_b

    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Skip jump into the IFD since it has already been read: IfdType "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (at "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Skip jump into the IFD since its offset is invalid: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    invoke-virtual {v1, v5, v6}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    goto/16 :goto_7

    :cond_14
    move-wide/from16 v2, v21

    long-to-int v2, v2

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readFully([B)V

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move/from16 v7, v23

    invoke-direct {v3, v13, v7, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;-><init>(II[B)V

    iget-object v2, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    move/from16 v11, p2

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iget-object v7, v15, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "DNGVersion"

    if-ne v7, v2, :cond_15

    iput v9, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMimeType:I

    :cond_15
    const-string v2, "Make"

    if-eq v7, v2, :cond_16

    const-string v2, "Model"

    if-ne v7, v2, :cond_17

    :cond_16
    iget-object v2, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "PENTAX"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_17
    if-ne v7, v12, :cond_19

    iget-object v2, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    const v3, 0xffff

    if-ne v2, v3, :cond_19

    :cond_18
    iput v8, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMimeType:I

    :cond_19
    iget v2, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    int-to-long v2, v2

    cmp-long v2, v2, v5

    if-eqz v2, :cond_1a

    invoke-virtual {v1, v5, v6}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    :cond_1a
    :goto_c
    add-int/lit8 v6, v16, 0x1

    int-to-short v6, v6

    move v2, v11

    move/from16 v3, v20

    goto/16 :goto_0

    :cond_1b
    const-wide/16 v17, 0x0

    iget v2, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    const/4 v9, 0x4

    add-int/2addr v2, v9

    if-gt v2, v4, :cond_1f

    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result v2

    int-to-long v5, v2

    cmp-long v3, v5, v17

    if-lez v3, :cond_1e

    if-ge v2, v4, :cond_1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    iget v2, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v5, v6}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    iget-object v2, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v9, 0x4

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {v0, v1, v9}, Lcom/motorola/camera/photometadata/PhotoMetadata;->readImageFileDirectory(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;I)V

    return-void

    :cond_1c
    iget-object v2, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v0, v1, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->readImageFileDirectory(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;I)V

    return-void

    :cond_1d
    const-string v0, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    invoke-static {v0, v2, v10}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1e
    const-string v0, "Stop reading file since a wrong offset may cause an infinite loop: "

    invoke-static {v0, v2, v10}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1f
    :goto_d
    return-void
.end method

.method public final removeAttribute(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->EXIF_TAGS:[[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final saveAttributes()V
    .locals 12

    const-string v0, ".tmp"

    const-string v1, "Could\'nt rename to "

    iget-boolean v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mIsSupportedFile:Z

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMimeType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_a

    iget-boolean v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mIsInputStream:Z

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mFilename:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v3, :cond_0

    if-eqz v2, :cond_9

    :cond_0
    iget v4, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailCompression:I

    const/4 v5, 0x6

    const/4 v6, 0x0

    if-eq v4, v5, :cond_2

    const/4 v5, 0x7

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v6

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getThumbnailBytes()[B

    move-result-object v4

    :goto_1
    iput-object v4, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    if-eqz v2, :cond_4

    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v6

    move-object v1, v0

    goto/16 :goto_7

    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    move-object v1, v6

    goto :goto_6

    :catch_0
    move-exception p0

    move-object v1, v6

    goto :goto_5

    :cond_4
    if-eqz v3, :cond_6

    const-string/jumbo v0, "temp"

    const-string v1, "jpg"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    sget v0, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v3, v7, v8, v0}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    sget-boolean v9, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    const/high16 v9, 0x100000

    new-array v9, v9, [B

    :goto_2
    invoke-virtual {v0, v9}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_5

    goto :goto_7

    :cond_5
    invoke-virtual {v1, v9, v4, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_3
    move-object v6, v0

    goto :goto_6

    :catch_1
    move-exception p0

    :goto_4
    move-object v6, v0

    goto :goto_5

    :catchall_2
    move-exception p0

    move-object v1, v6

    goto :goto_3

    :catch_2
    move-exception p0

    move-object v1, v6

    goto :goto_4

    :goto_5
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p0

    :goto_6
    invoke-static {v6}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    :cond_6
    move-object v0, v6

    move-object v1, v0

    move-object v5, v1

    :goto_7
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :try_start_4
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-eqz v2, :cond_7

    :try_start_5
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :catchall_4
    move-exception p0

    move-object v1, v6

    :goto_8
    move-object v6, v0

    goto :goto_c

    :catch_3
    move-exception p0

    move-object v1, v6

    :goto_9
    move-object v6, v0

    goto :goto_b

    :cond_7
    if-eqz v3, :cond_8

    sget v1, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v3, v7, v8, v1}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_a

    :cond_8
    move-object v1, v6

    :goto_a
    :try_start_6
    invoke-virtual {p0, v0, v1, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    iput-object v6, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    return-void

    :catchall_5
    move-exception p0

    goto :goto_8

    :catch_4
    move-exception p0

    goto :goto_9

    :catchall_6
    move-exception p0

    move-object v1, v6

    goto :goto_c

    :catch_5
    move-exception p0

    move-object v1, v6

    :goto_b
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception p0

    :goto_c
    invoke-static {v6}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    throw p0

    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string v0, "ExifInterface does not support saving attributes for the current input."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string v0, "ExifInterface only supports saving attributes on JPEG formats."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final saveAttributesToByteArray(Z)[B
    .locals 5

    iget-boolean v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mIsSupportedFile:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMimeType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailCompression:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getThumbnailBytes()[B

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v2, v0

    goto :goto_5

    :catch_0
    move-exception p0

    move-object v2, v0

    goto :goto_4

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot read inputstream without mark/reset support"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_4

    :try_start_2
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    move-object v0, v1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p0

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_5

    :try_start_3
    sget v1, Landroid/system/OsConstants;->SEEK_SET:I

    const-wide/16 v3, 0x0

    invoke-static {v0, v3, v4, v1}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :cond_5
    move-object v0, v2

    :goto_3
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    iput-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :goto_4
    :try_start_5
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_5
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "ExifInterface only supports saving attributes on JPEG formats."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .locals 25

    move-object/from16 v1, p0

    const-string v2, "PhotoMetadata"

    sget-boolean v3, Lcom/motorola/camera/photometadata/PhotoMetadata;->DEBUG_READ_WRITE:Z

    if-eqz v3, :cond_0

    const-string v0, ">>>>>>>>>> saveJpegAttributes begin"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v4, Ljava/io/DataInputStream;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v5, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v6, p2

    invoke-direct {v5, v6, v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    const-string v6, "Invalid marker"

    const/4 v7, -0x1

    if-ne v0, v7, :cond_51

    invoke-virtual {v5, v7}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    const/16 v8, -0x28

    if-ne v0, v8, :cond_50

    invoke-virtual {v5, v8}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-virtual {v5, v7}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    const/16 v8, -0x1f

    invoke-virtual {v5, v8}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    sget-object v9, Lcom/motorola/camera/photometadata/PhotoMetadata;->EXIF_TAGS:[[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    array-length v0, v9

    new-array v10, v0, [I

    array-length v0, v9

    new-array v0, v0, [I

    sget-object v11, Lcom/motorola/camera/photometadata/PhotoMetadata;->EXIF_POINTER_TAGS:[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    array-length v12, v11

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v12, :cond_1

    aget-object v15, v11, v14

    iget-object v15, v15, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v1, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata;->removeAttribute(Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    sget-object v12, Lcom/motorola/camera/photometadata/PhotoMetadata;->JPEG_INTERCHANGE_FORMAT_TAG:Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    iget-object v12, v12, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v1, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata;->removeAttribute(Ljava/lang/String;)V

    sget-object v14, Lcom/motorola/camera/photometadata/PhotoMetadata;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    iget-object v15, v14, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v1, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata;->removeAttribute(Ljava/lang/String;)V

    const/4 v15, 0x0

    :goto_1
    array-length v8, v9

    if-ge v15, v8, :cond_4

    iget-object v8, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v8, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v8

    array-length v7, v8

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v7, :cond_3

    aget-object v16, v8, v13

    check-cast v16, Ljava/util/Map$Entry;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_2

    move-object/from16 v17, v0

    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    move/from16 v18, v3

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    move-object/from16 v17, v0

    move/from16 v18, v3

    :goto_3
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v17

    move/from16 v3, v18

    goto :goto_2

    :cond_3
    move-object/from16 v17, v0

    move/from16 v18, v3

    add-int/lit8 v15, v15, 0x1

    const/4 v7, -0x1

    goto :goto_1

    :cond_4
    move-object/from16 v17, v0

    move/from16 v18, v3

    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    const/16 v3, 0xa

    if-eqz v0, :cond_9

    iget-object v13, v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->mMakerNotesMap:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v15

    mul-int/lit8 v16, v15, 0xc

    add-int/lit8 v16, v16, 0xa

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v8, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;

    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v0, v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v8, v7, v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v7, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->VENDOR_SIGNATURE:[B

    invoke-virtual {v8, v7}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([B)V

    const/16 v7, 0x101

    invoke-virtual {v8, v7}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    invoke-virtual {v8, v7}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    int-to-short v7, v15

    invoke-virtual {v8, v7}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v15, :cond_7

    move-object/from16 v21, v3

    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    move/from16 v23, v7

    move-object/from16 v7, v22

    check-cast v7, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;

    int-to-short v3, v3

    invoke-virtual {v8, v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    iget v3, v7, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->type:I

    move-object/from16 v22, v10

    iget-object v10, v7, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->bytes:[B

    int-to-short v3, v3

    invoke-virtual {v8, v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    iget v3, v7, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->count:I

    invoke-virtual {v8, v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeInt(I)V

    array-length v3, v10

    const/4 v7, 0x4

    if-le v3, v7, :cond_5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    add-int v3, v3, v16

    invoke-virtual {v8, v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeInt(I)V

    invoke-virtual {v0, v10}, Ljava/io/OutputStream;->write([B)V

    goto :goto_6

    :cond_5
    invoke-virtual {v8, v10}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([B)V

    rsub-int/lit8 v3, v3, 0x4

    :goto_5
    add-int/lit8 v7, v3, -0x1

    if-lez v3, :cond_6

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    move v3, v7

    goto :goto_5

    :cond_6
    :goto_6
    add-int/lit8 v7, v23, 0x1

    move-object/from16 v3, v21

    move-object/from16 v10, v22

    goto :goto_4

    :cond_7
    move-object/from16 v21, v3

    move-object/from16 v22, v10

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int v0, v0, v16

    const/16 v3, 0x7fff

    if-gt v0, v3, :cond_8

    invoke-virtual/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v3, v0

    if-lez v3, :cond_a

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    const/4 v7, 0x7

    array-length v8, v0

    invoke-direct {v3, v7, v8, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;-><init>(II[B)V

    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v7, "MakerNote"

    invoke-virtual {v0, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Number of elements too large to save"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move-object/from16 v22, v10

    :cond_a
    :goto_7
    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    move/from16 v19, v7

    const-wide/16 v7, 0x0

    if-nez v0, :cond_b

    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    aget-object v3, v11, v19

    iget-object v3, v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    iget-object v10, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v7, v8, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v10

    invoke-virtual {v0, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    aget-object v10, v11, v3

    iget-object v10, v10, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    iget-object v13, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v7, v8, v13}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v13

    invoke-virtual {v0, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v10, 0x3

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    aget-object v13, v11, v10

    iget-object v13, v13, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    iget-object v15, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v7, v8, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v15

    invoke-virtual {v0, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget-boolean v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mHasThumbnail:Z

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v13, 0x4

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v15, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v7, v8, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v15

    invoke-virtual {v0, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v14, v14, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    iget v15, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailLength:I

    int-to-long v7, v15

    iget-object v15, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v7, v8, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v7

    invoke-virtual {v0, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v7, "Compression"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget v8, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailCompression:I

    iget-object v13, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v8, v13}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    const/4 v0, 0x0

    :goto_8
    array-length v7, v9

    sget-object v8, Lcom/motorola/camera/photometadata/PhotoMetadata;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    if-ge v0, v7, :cond_11

    iget-object v7, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v13, 0x0

    :cond_f
    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v15, v14, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->format:I

    aget v15, v8, v15

    iget v14, v14, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->numberOfComponents:I

    mul-int/2addr v15, v14

    const/4 v14, 0x4

    if-le v15, v14, :cond_f

    add-int/2addr v13, v15

    goto :goto_9

    :cond_10
    aget v7, v17, v0

    add-int/2addr v7, v13

    aput v7, v17, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_11
    const/4 v0, 0x0

    const/16 v13, 0x8

    :goto_a
    array-length v14, v9

    const/16 v15, 0xc

    const/16 v16, 0x8

    const/4 v7, 0x6

    if-ge v0, v14, :cond_13

    iget-object v14, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_12

    aput v13, v22, v0

    iget-object v14, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    mul-int/2addr v14, v15

    add-int/2addr v14, v7

    aget v7, v17, v0

    add-int/2addr v14, v7

    add-int/2addr v13, v14

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_13
    iget-boolean v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mHasThumbnail:Z

    if-eqz v0, :cond_19

    iget v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailCompression:I

    if-ne v0, v7, :cond_19

    if-eqz v18, :cond_14

    const-string v0, "Write APP1 thumnail"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    const/16 v14, 0x55

    move/from16 v17, v7

    :goto_b
    const/4 v7, 0x0

    if-eqz v0, :cond_15

    if-lez v14, :cond_15

    move/from16 v21, v15

    array-length v15, v0

    add-int/2addr v15, v13

    add-int/lit8 v15, v15, 0x8

    const v10, 0xffff

    if-lt v15, v10, :cond_16

    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    array-length v10, v0

    const/4 v15, 0x0

    invoke-static {v0, v15, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    :try_start_0
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v15, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v15, v14, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "transcodeThumbnail error: "

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    :goto_c
    add-int/lit8 v14, v14, -0xa

    move/from16 v15, v21

    const/4 v10, 0x3

    goto :goto_b

    :cond_15
    move/from16 v21, v15

    :cond_16
    if-eqz v0, :cond_18

    if-gtz v14, :cond_17

    goto :goto_d

    :cond_17
    iput-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    array-length v0, v0

    iput v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailLength:I

    goto :goto_e

    :cond_18
    :goto_d
    const-string v0, "drop thumbnail due to overflow or transcode failure"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v7, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    const/4 v15, 0x0

    iput-boolean v15, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mHasThumbnail:Z

    iput v15, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailLength:I

    goto :goto_e

    :cond_19
    move/from16 v17, v7

    move/from16 v21, v15

    :goto_e
    iget-boolean v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mHasThumbnail:Z

    if-eqz v0, :cond_1a

    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v14, 0x4

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    int-to-long v14, v13

    iget-object v7, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v14, v15, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v7

    invoke-virtual {v0, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int v7, v17, v13

    iput v7, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailOffset:I

    iget v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailLength:I

    add-int/2addr v13, v0

    :cond_1a
    add-int/lit8 v13, v13, 0x8

    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    aget-object v10, v11, v7

    iget-object v10, v10, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    aget v12, v22, v7

    int-to-long v14, v12

    iget-object v7, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v14, v15, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v7

    invoke-virtual {v0, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    aget-object v7, v11, v3

    iget-object v7, v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    aget v10, v22, v3

    int-to-long v14, v10

    iget-object v10, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v14, v15, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v10

    invoke-virtual {v0, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    aget-object v11, v11, v7

    iget-object v11, v11, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    aget v7, v22, v7

    int-to-long v14, v7

    iget-object v7, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v14, v15, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v7

    invoke-virtual {v0, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_1d
    const/4 v10, 0x1

    :goto_f
    int-to-short v0, v13

    invoke-virtual {v5, v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    sget-object v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->IDENTIFIER_EXIF_APP1:[B

    invoke-virtual {v5, v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([B)V

    iget-object v7, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    sget-object v11, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v7, v11, :cond_1e

    const/16 v7, 0x4d4d

    goto :goto_10

    :cond_1e
    const/16 v7, 0x4949

    :goto_10
    invoke-virtual {v5, v7}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    iget-object v7, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    iput-object v7, v5, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    const/16 v7, 0x2a

    int-to-short v7, v7

    invoke-virtual {v5, v7}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    const-wide/16 v11, 0x8

    long-to-int v7, v11

    invoke-virtual {v5, v7}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeInt(I)V

    const/4 v7, 0x0

    :goto_11
    array-length v11, v9

    if-ge v7, v11, :cond_26

    iget-object v11, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_24

    iget-object v11, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    int-to-short v11, v11

    invoke-virtual {v5, v11}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    aget v11, v22, v7

    add-int/2addr v11, v3

    iget-object v12, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v12, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    mul-int/lit8 v12, v12, 0xc

    add-int/2addr v12, v11

    const/16 v20, 0x4

    add-int/lit8 v12, v12, 0x4

    iget-object v11, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_12
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_21

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    sget-object v14, Lcom/motorola/camera/photometadata/PhotoMetadata;->sExifTagMapsForWriting:Landroid/util/SparseArray;

    invoke-virtual {v14, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    iget v14, v14, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->number:I

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v15, v13, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->numberOfComponents:I

    move/from16 v19, v3

    iget v3, v13, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->format:I

    aget v24, v8, v3

    mul-int v10, v24, v15

    int-to-short v14, v14

    invoke-virtual {v5, v14}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    int-to-short v3, v3

    invoke-virtual {v5, v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    invoke-virtual {v5, v15}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeInt(I)V

    const/4 v14, 0x4

    if-le v10, v14, :cond_1f

    int-to-long v14, v12

    long-to-int v3, v14

    invoke-virtual {v5, v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeInt(I)V

    add-int/2addr v12, v10

    const/4 v14, 0x4

    goto :goto_14

    :cond_1f
    iget-object v3, v13, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->bytes:[B

    invoke-virtual {v5, v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([B)V

    const/4 v14, 0x4

    if-ge v10, v14, :cond_20

    :goto_13
    if-ge v10, v14, :cond_20

    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    :cond_20
    :goto_14
    move/from16 v3, v19

    const/4 v10, 0x1

    goto :goto_12

    :cond_21
    move/from16 v19, v3

    const/4 v14, 0x4

    if-nez v7, :cond_22

    iget-object v3, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_22

    aget v3, v22, v14

    int-to-long v10, v3

    long-to-int v3, v10

    invoke-virtual {v5, v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeInt(I)V

    const-wide/16 v10, 0x0

    goto :goto_15

    :cond_22
    const-wide/16 v10, 0x0

    long-to-int v3, v10

    invoke-virtual {v5, v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeInt(I)V

    :goto_15
    iget-object v3, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_23
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    iget-object v12, v12, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->bytes:[B

    array-length v13, v12

    const/4 v14, 0x4

    if-le v13, v14, :cond_23

    array-length v13, v12

    const/4 v15, 0x0

    invoke-virtual {v5, v12, v15, v13}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([BII)V

    goto :goto_16

    :cond_24
    move/from16 v19, v3

    const-wide/16 v10, 0x0

    :cond_25
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v19

    const/4 v10, 0x1

    goto/16 :goto_11

    :cond_26
    move/from16 v19, v3

    iget-boolean v3, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mHasThumbnail:Z

    if-eqz v3, :cond_27

    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getThumbnailBytes()[B

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([B)V

    :cond_27
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v3, v5, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    if-eqz v18, :cond_28

    const-string v3, "Copy MARKER_APP1 EXIF"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    iget-object v3, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrIccProfileApp2:[B

    if-eqz v3, :cond_29

    iget-object v3, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrMpfApp2:[B

    if-eqz v3, :cond_29

    const/4 v3, 0x1

    goto :goto_17

    :cond_29
    const/4 v3, 0x0

    :goto_17
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v15, 0x0

    invoke-direct {v7, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object v8, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAppData:Ljava/util/HashMap;

    if-eqz v8, :cond_2a

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$$ExternalSyntheticLambda0;

    invoke-direct {v9, v3, v7, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata$$ExternalSyntheticLambda0;-><init>(ZLjava/util/concurrent/atomic/AtomicBoolean;Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;)V

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_2a
    iget-object v3, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mApp6Data:Ljava/util/ArrayList;

    const/16 v8, -0x1a

    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    if-eqz v18, :cond_2b

    const-string v10, "Copy APP6"

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    const/4 v10, -0x1

    invoke-virtual {v5, v10}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-virtual {v5, v8}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    array-length v10, v9

    add-int/lit8 v10, v10, 0x2

    int-to-short v10, v10

    invoke-virtual {v5, v10}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    invoke-virtual {v5, v9}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([B)V

    goto :goto_18

    :cond_2c
    const/16 v3, -0x1e

    if-eqz p3, :cond_33

    iget-object v9, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrGContainerApp1:[B

    if-eqz v9, :cond_30

    const/4 v10, -0x1

    invoke-virtual {v5, v10}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    const/16 v9, -0x1f

    invoke-virtual {v5, v9}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    iget v9, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSecondaryImageSize:I

    if-lez v9, :cond_2f

    const/4 v9, 0x0

    :goto_19
    iget-object v10, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrGContainerApp1:[B

    array-length v11, v10

    sget-object v12, Lcom/motorola/camera/photometadata/PhotoMetadata;->GAINMAP_LENGTH:[B

    array-length v13, v12

    sub-int/2addr v11, v13

    if-ge v9, v11, :cond_2f

    array-length v11, v12

    add-int/2addr v11, v9

    invoke-static {v10, v9, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    invoke-static {v10, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-eqz v10, :cond_2e

    array-length v10, v12

    add-int/2addr v9, v10

    iget v10, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSecondaryImageSize:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    :goto_1a
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_2d

    iget-object v12, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrGContainerApp1:[B

    add-int/lit8 v13, v9, 0x1

    sget-object v14, Lcom/motorola/camera/photometadata/PhotoMetadata;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v14

    aget-byte v14, v14, v11

    aput-byte v14, v12, v9

    add-int/lit8 v11, v11, 0x1

    move v9, v13

    goto :goto_1a

    :cond_2d
    sget-object v10, Lcom/motorola/camera/photometadata/PhotoMetadata;->GAINMAP_END:[B

    array-length v11, v10

    const/4 v12, 0x0

    :goto_1b
    if-ge v12, v11, :cond_2f

    aget-byte v13, v10, v12

    iget-object v14, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrGContainerApp1:[B

    add-int/lit8 v15, v9, 0x1

    aput-byte v13, v14, v9

    add-int/lit8 v12, v12, 0x1

    move v9, v15

    goto :goto_1b

    :cond_2e
    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    :cond_2f
    iget-object v9, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrGContainerApp1:[B

    array-length v9, v9

    sget-object v10, Lcom/motorola/camera/photometadata/PhotoMetadata;->IDENTIFIER_HTTP_APP1:[B

    array-length v11, v10

    add-int/2addr v9, v11

    add-int/lit8 v9, v9, 0x2

    int-to-short v9, v9

    invoke-virtual {v5, v9}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    invoke-virtual {v5, v10}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([B)V

    iget-object v9, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrGContainerApp1:[B

    invoke-virtual {v5, v9}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([B)V

    if-eqz v18, :cond_30

    new-instance v9, Ljava/lang/String;

    iget-object v10, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrGContainerApp1:[B

    const/16 v11, 0x1e

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    const-string v10, "Copy APP1_GCONTAINER data:"

    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    iget v9, v5, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->pos:I

    iget-object v10, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrMpfApp2:[B

    if-eqz v10, :cond_33

    iget v11, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mPrimaryImageSize:I

    add-int/lit8 v11, v11, 0x5a

    add-int/2addr v11, v9

    sub-int v9, v11, v9

    add-int/lit8 v9, v9, -0x8

    const/16 v20, 0x4

    aget-byte v12, v10, v20

    const/16 v13, 0x4d

    if-ne v12, v13, :cond_32

    const/4 v12, 0x5

    aget-byte v10, v10, v12

    if-ne v10, v13, :cond_32

    const/4 v10, -0x1

    invoke-virtual {v5, v10}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-virtual {v5, v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    iget-object v10, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrMpfApp2:[B

    array-length v10, v10

    add-int/lit8 v10, v10, 0x2

    int-to-short v10, v10

    invoke-virtual {v5, v10}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    iget-object v10, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrMpfApp2:[B

    array-length v12, v10

    add-int/lit8 v12, v12, -0x1c

    const/4 v15, 0x0

    invoke-virtual {v5, v10, v15, v12}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([BII)V

    invoke-virtual {v5, v11}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeInt(I)V

    iget v10, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSecondaryImageSize:I

    if-lez v10, :cond_31

    iget-object v10, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrMpfApp2:[B

    array-length v11, v10

    add-int/lit8 v11, v11, -0x18

    move/from16 v12, v21

    invoke-virtual {v5, v10, v11, v12}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([BII)V

    iget v10, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSecondaryImageSize:I

    invoke-virtual {v5, v10}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeInt(I)V

    goto :goto_1c

    :cond_31
    iget-object v10, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrMpfApp2:[B

    array-length v11, v10

    add-int/lit8 v11, v11, -0x18

    const/16 v12, 0x10

    invoke-virtual {v5, v10, v11, v12}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([BII)V

    :goto_1c
    invoke-virtual {v5, v9}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeInt(I)V

    const/4 v15, 0x0

    int-to-short v9, v15

    invoke-virtual {v5, v9}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    invoke-virtual {v5, v9}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    if-eqz v18, :cond_33

    new-instance v9, Ljava/lang/String;

    iget-object v10, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrMpfApp2:[B

    const/16 v11, 0xa

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    const-string v10, "Copy APP2_MPF data:"

    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :cond_32
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid byte order"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    :goto_1d
    const/16 v9, 0x1000

    new-array v10, v9, [B

    :goto_1e
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_4f

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v11

    const/16 v12, -0x27

    if-eq v11, v12, :cond_4b

    const/16 v12, -0x26

    if-eq v11, v12, :cond_4b

    const-string v13, "Invalid length"

    const/16 v14, -0x1f

    if-eq v11, v14, :cond_42

    if-eq v11, v8, :cond_34

    goto :goto_21

    :cond_34
    iget-object v15, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mApp6Data:Ljava/util/ArrayList;

    if-eqz v15, :cond_3b

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v15

    if-ltz v15, :cond_3a

    sget-object v8, Lcom/motorola/camera/photometadata/PhotoMetadata;->IDENTIFIER_MMIMETA_APP6:[B

    array-length v14, v8

    new-array v9, v14, [B

    if-lt v15, v14, :cond_39

    invoke-virtual {v4, v9}, Ljava/io/DataInputStream;->read([B)I

    move-result v12

    const-string v3, "Invalid app6 length"

    if-ne v12, v14, :cond_38

    invoke-static {v9, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_37

    add-int/lit8 v15, v15, -0x2

    sub-int/2addr v15, v14

    invoke-virtual {v4, v15}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v8

    if-ne v8, v15, :cond_36

    if-eqz v18, :cond_35

    const-string v3, "Skip input MARKER_APP6"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    move/from16 v12, v17

    const/16 v3, -0x1e

    :goto_1f
    const/16 v8, 0x1000

    goto/16 :goto_26

    :cond_36
    invoke-virtual {v4}, Ljava/io/InputStream;->reset()V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    invoke-virtual {v4}, Ljava/io/InputStream;->reset()V

    :goto_20
    const/16 v3, -0x1e

    goto :goto_21

    :cond_38
    invoke-virtual {v4}, Ljava/io/InputStream;->reset()V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    invoke-virtual {v4}, Ljava/io/InputStream;->reset()V

    goto :goto_20

    :cond_3a
    invoke-virtual {v4}, Ljava/io/InputStream;->reset()V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    :goto_21
    if-ne v11, v3, :cond_3f

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_3f

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    add-int/lit8 v9, v8, -0x2

    new-array v12, v9, [B

    const/4 v15, 0x0

    invoke-virtual {v4, v12, v15, v9}, Ljava/io/DataInputStream;->read([BII)I

    move-result v14

    if-ne v14, v9, :cond_3e

    sget-object v9, Lcom/motorola/camera/photometadata/PhotoMetadata;->IDENTIFIER_ICC_APP2:[B

    array-length v13, v9

    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    invoke-static {v13, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_3d

    if-eqz v18, :cond_3c

    const-string v8, "Skip input icc_profile MARKER_APP2"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    :goto_22
    move/from16 v12, v17

    goto :goto_1f

    :cond_3d
    const/4 v9, -0x1

    invoke-virtual {v5, v9}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-virtual {v5, v11}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    int-to-short v8, v8

    invoke-virtual {v5, v8}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    invoke-virtual {v5, v12}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([B)V

    if-eqz v18, :cond_3c

    new-instance v8, Ljava/lang/String;

    const/16 v9, 0x14

    invoke-static {v12, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    const-string v9, "Write input MARKER_APP2 data:"

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_3e
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    const/4 v12, -0x1

    invoke-virtual {v5, v12}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-virtual {v5, v11}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    int-to-short v9, v8

    invoke-virtual {v5, v9}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_41

    :goto_23
    if-lez v8, :cond_40

    const/16 v9, 0x1000

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v15, 0x0

    invoke-virtual {v4, v10, v15, v12}, Ljava/io/DataInputStream;->read([BII)I

    move-result v9

    if-ltz v9, :cond_40

    invoke-virtual {v5, v10, v15, v9}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([BII)V

    sub-int/2addr v8, v9

    goto :goto_23

    :cond_40
    if-eqz v18, :cond_3c

    const-string v9, " length:"

    const-string v12, " data:"

    const-string v13, "Write input marker:"

    invoke-static {v11, v8, v13, v9, v12}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    const/16 v11, 0x14

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_41
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    add-int/lit8 v9, v8, -0x2

    if-ltz v9, :cond_4a

    move/from16 v12, v17

    new-array v14, v12, [B

    if-lt v9, v12, :cond_45

    invoke-virtual {v4, v14}, Ljava/io/DataInputStream;->read([B)I

    move-result v15

    if-ne v15, v12, :cond_46

    invoke-static {v14, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-eqz v12, :cond_45

    add-int/lit8 v8, v8, -0x8

    invoke-virtual {v4, v8}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v9

    if-ne v9, v8, :cond_44

    if-eqz v18, :cond_43

    const-string v8, "Skip input MARKER_APP1"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    const/16 v8, 0x1000

    const/4 v12, 0x6

    goto :goto_26

    :cond_44
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    const/4 v12, -0x1

    goto :goto_24

    :cond_46
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid exif"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_24
    invoke-virtual {v5, v12}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-virtual {v5, v11}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    int-to-short v11, v8

    invoke-virtual {v5, v11}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    const/4 v12, 0x6

    if-lt v9, v12, :cond_47

    add-int/lit8 v9, v8, -0x8

    invoke-virtual {v5, v14}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([B)V

    :cond_47
    :goto_25
    const/16 v8, 0x1000

    if-lez v9, :cond_48

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v15, 0x0

    invoke-virtual {v4, v10, v15, v11}, Ljava/io/DataInputStream;->read([BII)I

    move-result v11

    if-ltz v11, :cond_48

    invoke-virtual {v5, v10, v15, v11}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([BII)V

    sub-int/2addr v9, v11

    goto :goto_25

    :cond_48
    if-eqz v18, :cond_49

    new-instance v9, Ljava/lang/String;

    const/16 v11, 0x14

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/String;-><init>([B)V

    const-string v11, "Write input MARKER_APP1 data:"

    invoke-virtual {v11, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    :goto_26
    move v9, v8

    move/from16 v17, v12

    const/16 v8, -0x1a

    goto/16 :goto_1e

    :cond_4a
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    const/4 v12, -0x1

    invoke-virtual {v5, v12}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-virtual {v5, v11}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    if-eqz v18, :cond_4c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Write primary image length:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    sget-boolean v0, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    const/high16 v0, 0x100000

    new-array v0, v0, [B

    :goto_27
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v12, -0x1

    if-ne v1, v12, :cond_4e

    if-eqz v18, :cond_4d

    const-string/jumbo v0, "saveJpegAttributes end"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    return-void

    :cond_4e
    const/4 v15, 0x0

    invoke-virtual {v5, v0, v15, v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([BII)V

    goto :goto_27

    :cond_4f
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setApp6ByteArray([B)V
    .locals 5

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x4

    if-ge v2, v0, :cond_2

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v1, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, v3, -0x2

    if-ltz v4, :cond_1

    add-int/2addr v4, v2

    invoke-static {p1, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->addApp6ByteArray([B)V

    :cond_1
    add-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    const-string v4, "PhotoMetadata"

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    sget-object v6, Lcom/motorola/camera/photometadata/PhotoMetadata;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "GPSTimeStamp"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, " : "

    const-string v8, "Invalid value for "

    if-eqz v6, :cond_1

    sget-object v6, Lcom/motorola/camera/photometadata/PhotoMetadata;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/1,"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/1"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v11, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v9, v11

    double-to-long v9, v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "/10000"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_0
    const/4 v6, 0x0

    move v7, v6

    :goto_1
    sget-object v8, Lcom/motorola/camera/photometadata/PhotoMetadata;->EXIF_TAGS:[[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    array-length v8, v8

    if-ge v7, v8, :cond_18

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4

    iget-boolean v8, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mHasThumbnail:Z

    if-nez v8, :cond_4

    :cond_3
    :goto_2
    move-object/from16 v17, v4

    move v4, v6

    goto/16 :goto_12

    :cond_4
    sget-object v8, Lcom/motorola/camera/photometadata/PhotoMetadata;->sExifTagMapsForWriting:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    if-eqz v8, :cond_3

    iget v9, v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->secondaryFormat:I

    iget v8, v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->primaryFormat:I

    if-nez v2, :cond_5

    iget-object v8, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-static {v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v10

    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v8, v11, :cond_b

    iget-object v11, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v8, v11, :cond_6

    goto/16 :goto_5

    :cond_6
    const/4 v11, -0x1

    if-eq v9, v11, :cond_7

    iget-object v12, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eq v9, v12, :cond_c

    iget-object v12, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v9, v12, :cond_7

    goto/16 :goto_6

    :cond_7
    if-eq v8, v5, :cond_b

    const/4 v12, 0x7

    if-eq v8, v12, :cond_b

    if-ne v8, v3, :cond_8

    goto :goto_5

    :cond_8
    const-string v12, "Given tag ("

    const-string v13, ") value didn\'t match with one of expected formats: "

    invoke-static {v12, v1, v13}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/motorola/camera/photometadata/PhotoMetadata;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    aget-object v8, v13, v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    const-string v14, ""

    if-ne v9, v11, :cond_9

    move-object v9, v14

    goto :goto_3

    :cond_9
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, v13, v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_3
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " (guess: "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v9, v13, v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v11, :cond_a

    goto :goto_4

    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v8, v13, v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_4
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    :goto_5
    move v9, v8

    :cond_c
    :goto_6
    const-string v8, "/"

    sget-object v10, Lcom/motorola/camera/photometadata/PhotoMetadata;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const-string v11, ","

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    const-string v8, "Data format isn\'t one of expected formats: "

    invoke-static {v8, v9, v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    new-array v11, v9, [D

    move v12, v6

    :goto_7
    array-length v13, v8

    if-ge v12, v13, :cond_d

    aget-object v13, v8, v12

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    aput-wide v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_d
    iget-object v8, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    iget-object v12, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    const/16 v13, 0xc

    aget v10, v10, v13

    mul-int/2addr v10, v9

    new-array v10, v10, [B

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move v12, v6

    :goto_8
    if-ge v12, v9, :cond_e

    aget-wide v14, v11, v12

    invoke-virtual {v10, v14, v15}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_e
    new-instance v11, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-direct {v11, v13, v9, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;-><init>(II[B)V

    invoke-virtual {v8, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v11, v9

    new-array v12, v11, [Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    move v13, v6

    :goto_9
    array-length v14, v9

    if-ge v13, v14, :cond_f

    aget-object v14, v9, v13

    invoke-virtual {v14, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    aget-object v16, v14, v6

    move-object/from16 v17, v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-long v3, v3

    aget-object v14, v14, v5

    move/from16 v16, v5

    move/from16 p2, v6

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-long v5, v5

    invoke-direct {v15, v3, v4, v5, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;-><init>(JJ)V

    aput-object v15, v12, v13

    add-int/lit8 v13, v13, 0x1

    move/from16 v6, p2

    move/from16 v5, v16

    move-object/from16 v4, v17

    const/4 v3, 0x2

    goto :goto_9

    :cond_f
    move-object/from16 v17, v4

    move/from16 v16, v5

    move/from16 p2, v6

    iget-object v3, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iget-object v4, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    const/16 v5, 0xa

    aget v6, v10, v5

    mul-int/2addr v6, v11

    new-array v6, v6, [B

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move/from16 v4, p2

    :goto_a
    if-ge v4, v11, :cond_10

    aget-object v8, v12, v4

    iget-wide v9, v8, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;->numerator:J

    long-to-int v9, v9

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-wide v8, v8, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;->denominator:J

    long-to-int v8, v8

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_10
    new-instance v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-direct {v4, v5, v11, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;-><init>(II[B)V

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    move/from16 v4, p2

    move/from16 v5, v16

    goto/16 :goto_12

    :pswitch_3
    move-object/from16 v17, v4

    move/from16 v16, v5

    move/from16 p2, v6

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    new-array v5, v4, [I

    :goto_c
    array-length v8, v3

    if-ge v6, v8, :cond_11

    aget-object v8, v3, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_11
    iget-object v3, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iget-object v6, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    const/16 v8, 0x9

    aget v9, v10, v8

    mul-int/2addr v9, v4

    new-array v9, v9, [B

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move/from16 v6, p2

    :goto_d
    if-ge v6, v4, :cond_12

    aget v10, v5, v6

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_12
    new-instance v5, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-direct {v5, v8, v4, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;-><init>(II[B)V

    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :pswitch_4
    move-object/from16 v17, v4

    move/from16 v16, v5

    move/from16 p2, v6

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    new-array v4, v4, [Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    move/from16 v5, p2

    :goto_e
    array-length v6, v3

    if-ge v5, v6, :cond_13

    aget-object v6, v3, v5

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    aget-object v10, v6, p2

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-long v10, v10

    aget-object v6, v6, v16

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    double-to-long v12, v12

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;-><init>(JJ)V

    aput-object v9, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_13
    iget-object v3, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iget-object v5, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createURational([Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;Ljava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    :pswitch_5
    move-object/from16 v17, v4

    move/from16 v16, v5

    move/from16 p2, v6

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    new-array v4, v4, [J

    move/from16 v5, p2

    :goto_f
    array-length v6, v3

    if-ge v5, v6, :cond_14

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_14
    iget-object v3, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iget-object v5, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    :pswitch_6
    move-object/from16 v17, v4

    move/from16 v16, v5

    move/from16 p2, v6

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    new-array v4, v4, [I

    move/from16 v5, p2

    :goto_10
    array-length v6, v3

    if-ge v5, v6, :cond_15

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_15
    iget-object v3, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iget-object v5, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    :pswitch_7
    move-object/from16 v17, v4

    move/from16 v16, v5

    move/from16 p2, v6

    iget-object v3, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static {v2}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createString(Ljava/lang/String;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v4, p2

    goto :goto_12

    :pswitch_8
    move-object/from16 v17, v4

    move/from16 v16, v5

    move/from16 p2, v6

    iget-object v3, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v5, :cond_16

    move/from16 v4, p2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x30

    if-lt v6, v8, :cond_17

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v9, 0x31

    if-gt v6, v9, :cond_17

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int/2addr v6, v8

    int-to-byte v6, v6

    new-array v8, v5, [B

    aput-byte v6, v8, v4

    new-instance v6, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    invoke-direct {v6, v5, v5, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;-><init>(II[B)V

    goto :goto_11

    :cond_16
    move/from16 v4, p2

    :cond_17
    sget-object v6, Lcom/motorola/camera/photometadata/PhotoMetadata;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    new-instance v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    array-length v9, v6

    invoke-direct {v8, v5, v9, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;-><init>(II[B)V

    move-object v6, v8

    :goto_11
    invoke-virtual {v3, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_12
    add-int/lit8 v7, v7, 0x1

    move v6, v4

    move-object/from16 v4, v17

    const/4 v3, 0x2

    goto/16 :goto_1

    :cond_18
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final setLocationAttributes(Landroid/location/Location;)V
    .locals 11

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy:MM:dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm:ss"

    invoke-direct {v2, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/motorola/camera/Geographic;->decimalToDMS(D)Ljava/lang/String;

    move-result-object v9

    const-string v10, "GPSLatitude"

    invoke-virtual {p0, v10, v9}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/motorola/camera/Geographic;->decimalToDMS(D)Ljava/lang/String;

    move-result-object v9

    const-string v10, "GPSLongitude"

    invoke-virtual {p0, v10, v9}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v9, 0x408f400000000000L    # 1000.0

    mul-double/2addr v9, v3

    double-to-int v9, v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/1000"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "GPSAltitude"

    invoke-virtual {p0, v10, v9}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v9, 0x0

    cmpl-double v3, v3, v9

    if-lez v3, :cond_1

    const-string v3, "0"

    goto :goto_0

    :cond_1
    const-string v3, "1"

    :goto_0
    const-string v4, "GPSAltitudeRef"

    invoke-virtual {p0, v4, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    cmpl-double v3, v7, v9

    if-lez v3, :cond_2

    const-string v3, "N"

    goto :goto_1

    :cond_2
    const-string v3, "S"

    :goto_1
    const-string v4, "GPSLatitudeRef"

    invoke-virtual {p0, v4, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    cmpl-double v3, v5, v9

    if-lez v3, :cond_3

    const-string v3, "E"

    goto :goto_2

    :cond_3
    const-string v3, "W"

    :goto_2
    const-string v4, "GPSLongitudeRef"

    invoke-virtual {p0, v4, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "GPSDateStamp"

    invoke-virtual {p0, v3, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "GPSTimeStamp"

    invoke-virtual {p0, v2, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GPSProcessingMethod"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final setMakernoteAttribute(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;[B)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    iget p1, p1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->mCode:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;

    const/4 v1, 0x2

    array-length v2, p2

    invoke-direct {v0, v1, v2, p2}, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;-><init>(II[B)V

    iget-object p0, p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->mMakerNotesMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final setMakernoteByteArray([B)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->addEntryMarkerData([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unable to parse makernotes: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PhotoMetadata"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setThumbnailBytes([B)V
    .locals 3

    const-string v0, "PhotoMetadata"

    if-nez p1, :cond_0

    const-string/jumbo p0, "thumbnail is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    array-length v1, p1

    const v2, 0xffff

    if-le v1, v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Length of thumbnail exceeds size limit: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mHasThumbnail:Z

    const/4 v0, 0x6

    iput v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailCompression:I

    array-length v0, p1

    iput v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailLength:I

    iput-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    return-void
.end method

.method public final setThumbnailData(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V
    .locals 14

    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "Compression"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailCompression:I

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    const/4 v4, 0x7

    if-eq v1, v4, :cond_1

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->handleThumbnailFromJfif(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    return-void

    :cond_1
    const-string v1, "BitsPerSample"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz v1, :cond_9

    iget-object v4, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, [I

    sget-object v4, Lcom/motorola/camera/photometadata/PhotoMetadata;->BITS_PER_SAMPLE_RGB:[I

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMimeType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_9

    const-string v5, "PhotometricInterpretation"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz v5, :cond_9

    iget-object v6, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v5

    if-ne v5, v3, :cond_3

    sget-object v6, Lcom/motorola/camera/photometadata/PhotoMetadata;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    if-ne v5, v2, :cond_9

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_4
    :goto_0
    const-string v1, "StripOffsets"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    const-string v2, "StripByteCounts"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->convertToLongArray(Ljava/io/Serializable;)[J

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->convertToLongArray(Ljava/io/Serializable;)[J

    move-result-object v0

    const-string v2, "PhotoMetadata"

    if-nez v1, :cond_5

    const-string/jumbo p0, "stripOffsets should not be null."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    if-nez v0, :cond_6

    const-string/jumbo p0, "stripByteCounts should not be null."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    invoke-static {v0}, Ljava/util/Arrays;->stream([J)Ljava/util/stream/LongStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v5, v4, [B

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_1
    array-length v10, v1

    if-ge v7, v10, :cond_8

    aget-wide v10, v1, v7

    long-to-int v10, v10

    aget-wide v11, v0, v7

    long-to-int v11, v11

    sub-int/2addr v10, v8

    if-gez v10, :cond_7

    const-string v12, "Invalid strip offset value"

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    int-to-long v12, v10

    invoke-virtual {p1, v12, v13}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    add-int/2addr v8, v10

    new-array v10, v11, [B

    invoke-virtual {p1, v10}, Ljava/io/InputStream;->read([B)I

    add-int/2addr v8, v11

    invoke-static {v10, v6, v5, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v11

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_8
    iput-boolean v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mHasThumbnail:Z

    iput-object v5, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    iput v4, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailLength:I

    :cond_9
    :goto_2
    return-void

    :cond_a
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->handleThumbnailFromJfif(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    return-void
.end method

.method public final swapBasedOnImageSize(II)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "ImageLength"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "ImageWidth"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    iget-object v4, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    iget-object v4, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz v0, :cond_3

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    iget-object v4, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    iget-object v4, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    iget-object v4, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    if-ge v0, v1, :cond_3

    if-ge v2, v3, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final updateImageSizeValues(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;I)V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "DefaultCropSize"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "SensorTopBorder"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "SensorLeftBorder"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    iget-object v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "SensorBottomBorder"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    iget-object v4, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "SensorRightBorder"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    const-string v5, "ImageLength"

    const-string v6, "ImageWidth"

    if-eqz v0, :cond_1

    iget p1, v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->format:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, [Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    aget-object v0, p1, v3

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    filled-new-array {v0}, [Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createURational([Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;Ljava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v0

    aget-object p1, p1, v2

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    filled-new-array {p1}, [Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createURational([Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;Ljava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, [I

    aget v0, p1, v3

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v0

    aget p1, p1, v2

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {p1, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object p1

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    iget-object v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    if-le v0, p1, :cond_4

    if-le v1, v2, :cond_4

    sub-int/2addr v0, p1

    sub-int/2addr v1, v2

    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v1, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz v0, :cond_3

    if-nez v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "JPEGInterchangeFormat"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getJpegAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;II)V

    :cond_4
    return-void
.end method
