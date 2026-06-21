.class public Lcom/motorola/camera/saving/FileName;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final EXT_ACTIVE_PHOTO:Ljava/lang/String; = "_MP"

.field public static final EXT_AI_PERSONAL_COLOR_TONE:Ljava/lang/String; = "_PCT"

.field private static final EXT_ALTM:Ljava/lang/String; = "_ALT"

.field public static final EXT_AUTO_ENHANCE:Ljava/lang/String; = "_AE"

.field public static final EXT_BACKUP:Ljava/lang/String; = "_BACKUP"

.field public static final EXT_CAPTURE_THUMB:Ljava/lang/String; = "_CAPTURE_THUMB"

.field public static final EXT_DEBUG_SLOW_MOTION:Ljava/lang/String; = "_SM"

.field private static final EXT_DEPTH:Ljava/lang/String; = "_DEPTH"

.field private static final EXT_DEPTH_MAP:Ljava/lang/String; = "_MAP"

.field private static final EXT_DIS:Ljava/lang/String; = "_DIS"

.field private static final EXT_DISPLAY_FLASH:Ljava/lang/String; = "_DF"

.field public static final EXT_DOC:Ljava/lang/String; = "_DOC"

.field public static final EXT_DOLBY_VISION:Ljava/lang/String; = "_DOLBY"

.field private static final EXT_DUP:Ljava/lang/String; = "_DUP"

.field public static final EXT_FALL_BACK:Ljava/lang/String; = "_FALLBACK"

.field public static final EXT_HDR:Ljava/lang/String; = "_HDR"

.field private static final EXT_HYPERLAPSE:Ljava/lang/String; = "_HL"

.field public static final EXT_LAYER:Ljava/lang/String; = "_LAYER"

.field private static final EXT_LL:Ljava/lang/String; = "_LL"

.field private static final EXT_MFNR:Ljava/lang/String; = "_MFNR"

.field public static final EXT_MULTI_FRAME:Ljava/lang/String; = "_MF"

.field public static final EXT_NR:Ljava/lang/String; = "_NR"

.field private static final EXT_NV:Ljava/lang/String; = "_NV"

.field public static final EXT_PORTRAIT:Ljava/lang/String; = "_PORTRAIT"

.field private static final EXT_PREVIEW_DUMP:Ljava/lang/String; = "_PREVIEW"

.field private static final EXT_SR:Ljava/lang/String; = "_SR"

.field private static final EXT_SUPER_REMOSAIC:Ljava/lang/String; = "_SRRM"

.field public static final FORMAT:Ljava/lang/String; = "yyyyMMdd_HHmmssSSS"

.field private static final MAX_FILE_NAME_LENGTH:I = 0x80

.field public static final PREFIX_IMAGE:Ljava/lang/String; = "IMG_"

.field public static final PREFIX_SCAN:Ljava/lang/String; = "SCAN_"

.field public static final PREFIX_TEMPORARY:Ljava/lang/String; = "TEMP_"

.field public static final PREFIX_THUMBNAIL:Ljava/lang/String; = "THUMBNAIL_"

.field public static final PREFIX_VIDEO:Ljava/lang/String; = "VID_"


# instance fields
.field private mAttributes:J

.field private final mDate:J

.field private mExtension:Ljava/lang/String;

.field private mFileNumber:I

.field private mPrefix:Ljava/lang/String;

.field private final transient mSimpleDateFormat:Ljava/text/SimpleDateFormat;

.field private mSuffix:Ljava/lang/String;

.field private mType:Lcom/motorola/camera/ShotType;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ShotType;J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    .line 3
    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyyMMdd_HHmmssSSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/motorola/camera/saving/FileName;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/saving/FileName;->mType:Lcom/motorola/camera/ShotType;

    .line 5
    iput-wide p2, p0, Lcom/motorola/camera/saving/FileName;->mDate:J

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/saving/FileName;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    .line 8
    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyyMMdd_HHmmssSSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/motorola/camera/saving/FileName;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 9
    iget-object v0, p1, Lcom/motorola/camera/saving/FileName;->mType:Lcom/motorola/camera/ShotType;

    iput-object v0, p0, Lcom/motorola/camera/saving/FileName;->mType:Lcom/motorola/camera/ShotType;

    .line 10
    iget-wide v0, p1, Lcom/motorola/camera/saving/FileName;->mDate:J

    iput-wide v0, p0, Lcom/motorola/camera/saving/FileName;->mDate:J

    .line 11
    iget-object v0, p1, Lcom/motorola/camera/saving/FileName;->mPrefix:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/saving/FileName;->mPrefix:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Lcom/motorola/camera/saving/FileName;->mSuffix:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/saving/FileName;->mSuffix:Ljava/lang/String;

    .line 13
    iget-object v0, p1, Lcom/motorola/camera/saving/FileName;->mExtension:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/saving/FileName;->mExtension:Ljava/lang/String;

    .line 14
    iget-wide v0, p1, Lcom/motorola/camera/saving/FileName;->mAttributes:J

    iput-wide v0, p0, Lcom/motorola/camera/saving/FileName;->mAttributes:J

    return-void
.end method

.method private appendFileNumber(Ljava/lang/StringBuilder;)V
    .locals 3

    invoke-static {}, Landroid/icu/text/NumberFormat;->getIntegerInstance()Landroid/icu/text/NumberFormat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/icu/text/NumberFormat;->setGroupingUsed(Z)V

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    invoke-virtual {v0, v1}, Landroid/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/saving/FileName;->mFileNumber:I

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private createPrefix()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/saving/FileName;->mPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/saving/FileName;->mPrefix:Ljava/lang/String;

    return-object p0

    :cond_0
    const-wide/16 v0, 0x2000

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "TEMP_"

    return-object p0

    :cond_1
    const-wide/32 v0, 0x20000000

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "THUMBNAIL_"

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/saving/FileName;->mType:Lcom/motorola/camera/ShotType;

    invoke-virtual {p0}, Lcom/motorola/camera/ShotType;->isVideo()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "VID_"

    return-object p0

    :cond_3
    const-string p0, "IMG_"

    return-object p0
.end method

.method private hasAttribute(J)Z
    .locals 2

    iget-wide v0, p0, Lcom/motorola/camera/saving/FileName;->mAttributes:J

    and-long/2addr v0, p1

    cmp-long p0, v0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public createExtension()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/saving/FileName;->mExtension:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/saving/FileName;->mExtension:Ljava/lang/String;

    return-object p0

    :cond_0
    sget-object v0, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$ShotType:[I

    iget-object p0, p0, Lcom/motorola/camera/saving/FileName;->mType:Lcom/motorola/camera/ShotType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const-string p0, ".jpg"

    return-object p0

    :cond_1
    const-string p0, ".dng"

    return-object p0

    :cond_2
    const-string p0, ".mp4"

    return-object p0
.end method

.method public extension(Ljava/lang/String;)Lcom/motorola/camera/saving/FileName;
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/saving/FileName;->mExtension:Ljava/lang/String;

    return-object p0
.end method

.method public getBaseName()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/saving/FileName;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    iget-wide v2, p0, Lcom/motorola/camera/saving/FileName;->mDate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/motorola/camera/saving/FileName;->createPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/camera/saving/FileName;->createExtension()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/motorola/camera/saving/FileName;->getNameNoExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/camera/saving/FileName;->createExtension()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNameNoExtension()Ljava/lang/String;
    .locals 14

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/saving/FileName;->getBaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/saving/FileName;->mType:Lcom/motorola/camera/ShotType;

    sget-object v2, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    if-ne v1, v2, :cond_1

    const-wide v1, 0x80000000L

    invoke-direct {p0, v1, v2}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "_DOLBY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Lcom/motorola/camera/saving/FileName;->mFileNumber:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/motorola/camera/saving/FileName;->appendFileNumber(Ljava/lang/StringBuilder;)V

    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/saving/FileName;->mSuffix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "_MFNR"

    const-wide/32 v3, 0x20000

    const-wide/16 v5, 0x200

    const-wide/16 v7, 0x2

    const-string v9, "_HDR"

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/saving/FileName;->mSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_2
    sget-boolean v1, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    if-eqz v1, :cond_3

    const-wide/16 v10, 0x40

    invoke-direct {p0, v10, v11}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v1, "_FALLBACK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_3
    if-eqz v1, :cond_4

    const-wide/32 v10, 0x8000

    invoke-direct {p0, v10, v11}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v1, "_NR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_4
    const-wide/16 v10, 0x4000

    invoke-direct {p0, v10, v11}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v1, "_HL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_5
    const-wide/16 v10, 0x20

    if-eqz v1, :cond_6

    const-wide/16 v12, 0x400

    invoke-direct {p0, v12, v13}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v12

    if-eqz v12, :cond_6

    const-string v1, "_SR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v10, v11}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0, v10, v11}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0, v7, v8}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v10

    if-eqz v10, :cond_a

    const-wide/16 v10, 0x4

    invoke-direct {p0, v10, v11}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v1

    const-string v10, "_DEPTH"

    if-eqz v1, :cond_8

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_MAP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0, v5, v6}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v1

    if-nez v1, :cond_12

    const-wide/16 v11, 0x100

    invoke-direct {p0, v11, v12}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "_LAYER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_a
    if-eqz v1, :cond_b

    const-wide/16 v10, 0x80

    invoke-direct {p0, v10, v11}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v10

    if-eqz v10, :cond_b

    const-string v1, "_LL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_b
    if-eqz v1, :cond_c

    invoke-direct {p0, v3, v4}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_c
    if-eqz v1, :cond_d

    const-wide/32 v10, 0x10000

    invoke-direct {p0, v10, v11}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v10

    if-eqz v10, :cond_d

    const-string v1, "_NV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_d
    const-wide/16 v10, 0x10

    invoke-direct {p0, v10, v11}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v10

    if-eqz v10, :cond_e

    const-string v1, "_DUP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_e
    if-eqz v1, :cond_f

    const-wide/16 v10, 0x1

    invoke-direct {p0, v10, v11}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v10

    if-eqz v10, :cond_f

    const-string v1, "_ALT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_f
    if-eqz v1, :cond_10

    const-wide/32 v10, 0x200000

    invoke-direct {p0, v10, v11}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v10

    if-eqz v10, :cond_10

    const-string v1, "_DF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_10
    if-eqz v1, :cond_11

    const-wide/32 v10, 0x400000

    invoke-direct {p0, v10, v11}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v10

    if-eqz v10, :cond_11

    const-string v1, "_SRRM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_11
    if-eqz v1, :cond_12

    const-wide/16 v10, 0x8

    invoke-direct {p0, v10, v11}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "_DIS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    :goto_0
    const-wide/32 v10, 0x100000

    invoke-direct {p0, v10, v11}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "_PREVIEW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const-wide/32 v10, 0x2000000

    invoke-direct {p0, v10, v11}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "_DOC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    sget-boolean v1, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    if-eqz v1, :cond_15

    const-wide/32 v10, 0x4000000

    invoke-direct {p0, v10, v11}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v10

    if-eqz v10, :cond_15

    const-string v10, "_SM"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    const-wide/16 v10, 0x1000

    invoke-direct {p0, v10, v11}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v10

    if-eqz v10, :cond_16

    const-string v10, "_MP"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    const-wide/32 v10, 0x10000000

    invoke-direct {p0, v10, v11}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v10

    if-eqz v10, :cond_17

    const-string v10, "_AE"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    invoke-direct {p0, v5, v6}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v5

    if-eqz v5, :cond_1b

    const-wide/32 v5, 0x80000

    invoke-direct {p0, v5, v6}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_18
    const-wide/32 v5, 0x800000

    invoke-direct {p0, v5, v6}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v5

    if-eqz v5, :cond_19

    const-string v5, "_MF"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    :goto_1
    if-eqz v1, :cond_1a

    invoke-direct {p0, v7, v8}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-direct {p0, v3, v4}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    const-string v1, "_PORTRAIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    const-wide v1, 0x100000000L

    invoke-direct {p0, v1, v2}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "_PCT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    const-wide/32 v1, 0x40000000

    invoke-direct {p0, v1, v2}, Lcom/motorola/camera/saving/FileName;->hasAttribute(J)Z

    move-result p0

    if-eqz p0, :cond_1d

    const-string p0, "_BACKUP"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public removeAttribute(J)Lcom/motorola/camera/saving/FileName;
    .locals 2

    iget-wide v0, p0, Lcom/motorola/camera/saving/FileName;->mAttributes:J

    not-long p1, p1

    and-long/2addr p1, v0

    iput-wide p1, p0, Lcom/motorola/camera/saving/FileName;->mAttributes:J

    return-object p0
.end method

.method public setAttribute(J)Lcom/motorola/camera/saving/FileName;
    .locals 2

    iget-wide v0, p0, Lcom/motorola/camera/saving/FileName;->mAttributes:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/motorola/camera/saving/FileName;->mAttributes:J

    return-object p0
.end method

.method public setFileNumber(I)Lcom/motorola/camera/saving/FileName;
    .locals 0

    iput p1, p0, Lcom/motorola/camera/saving/FileName;->mFileNumber:I

    return-object p0
.end method

.method public setInstanceTypeAttributes(Lcom/motorola/camera/mcf/Mcf$InstanceType;)Lcom/motorola/camera/saving/FileName;
    .locals 6

    sget-object v0, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-wide/16 v0, 0x400

    const-wide/32 v2, 0x400000

    const-wide/16 v4, 0x20

    packed-switch p1, :pswitch_data_0

    return-object p0

    :pswitch_0
    const-wide/16 v0, 0x40

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    return-object p0

    :pswitch_1
    invoke-virtual {p0, v2, v3}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    invoke-virtual {p0, v4, v5}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    return-object p0

    :pswitch_2
    invoke-virtual {p0, v2, v3}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    return-object p0

    :pswitch_3
    const-wide/32 v0, 0x800000

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    return-object p0

    :pswitch_4
    const-wide/32 v0, 0x80000

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    return-object p0

    :pswitch_5
    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    invoke-virtual {p0, v4, v5}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    return-object p0

    :pswitch_6
    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    return-object p0

    :pswitch_7
    const-wide/32 v0, 0x10000

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    return-object p0

    :pswitch_8
    const-wide/32 v0, 0x20000

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    return-object p0

    :pswitch_9
    const-wide/32 v0, 0x200000

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    return-object p0

    :pswitch_a
    const-wide/16 v0, 0x80

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    return-object p0

    :pswitch_b
    invoke-virtual {p0, v4, v5}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setType(Lcom/motorola/camera/ShotType;)Lcom/motorola/camera/saving/FileName;
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/saving/FileName;->mType:Lcom/motorola/camera/ShotType;

    return-object p0
.end method

.method public suffix(Ljava/lang/String;)Lcom/motorola/camera/saving/FileName;
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/saving/FileName;->mSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FileName{mType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/saving/FileName;->mType:Lcom/motorola/camera/ShotType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/saving/FileName;->mDate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPrefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/saving/FileName;->mPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSuffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/saving/FileName;->mSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/saving/FileName;->mAttributes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mExtension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/saving/FileName;->mExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
