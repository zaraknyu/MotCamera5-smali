.class public Lcom/adobe/magic_clean/CameraCleanDocClassificationAndroidShim;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MagicClean"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native getDocClassification(Landroid/graphics/Bitmap;)Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationOutput;
.end method


# virtual methods
.method public GetDocClassification(Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationInput;)Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationOutput;
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    iget-object v3, p1, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationInput;->mInputBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/adobe/magic_clean/CameraCleanDocClassificationAndroidShim;->IsInputValid(Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationInput;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationInput;->mInputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget v4, Lcom/adobe/magic_clean/DocClassificationUtils;->kImageDimensionsForDocClassificationNN:I

    if-ne v3, v4, :cond_1

    iget-object v3, p1, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationInput;->mInputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sget v4, Lcom/adobe/magic_clean/DocClassificationUtils;->kImageDimensionsForDocClassificationNN:I

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationInput;->mInputBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v3, p1, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationInput;->mInputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget v4, Lcom/adobe/magic_clean/DocClassificationUtils;->kHalfDownsampleImageDimensionsForDocClassificationNN:I

    const/4 v5, 0x1

    if-le v3, v4, :cond_2

    iget-object v3, p1, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationInput;->mInputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sget v4, Lcom/adobe/magic_clean/DocClassificationUtils;->kHalfDownsampleImageDimensionsForDocClassificationNN:I

    if-le v3, v4, :cond_2

    iget-object v2, p1, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationInput;->mInputBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v4, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    sget v3, Lcom/adobe/magic_clean/DocClassificationUtils;->kImageDimensionsForDocClassificationNN:I

    invoke-static {v2, v3, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    :cond_3
    iget-object v2, p1, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationInput;->mInputBitmap:Landroid/graphics/Bitmap;

    sget v3, Lcom/adobe/magic_clean/DocClassificationUtils;->kImageDimensionsForDocClassificationNN:I

    invoke-static {v2, v3, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_1
    invoke-direct {p0, v2}, Lcom/adobe/magic_clean/CameraCleanDocClassificationAndroidShim;->getDocClassification(Landroid/graphics/Bitmap;)Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationOutput;

    move-result-object v2

    :cond_4
    if-nez v2, :cond_5

    new-instance v2, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationOutput;

    invoke-direct {v2}, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationOutput;-><init>()V

    :cond_5
    iget-object p0, p1, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationInput;->mEnableBetaFeatures:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "GetDocClassificationTime: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    return-object v2
.end method

.method public IsInputValid(Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationInput;)Z
    .locals 0

    iget-object p0, p1, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationInput;->mInputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    iget-object p1, p1, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationInput;->mInputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    mul-int/2addr p0, p1

    sget p1, Lcom/adobe/magic_clean/DocClassificationUtils;->kMinInputImageSizeForDocClassificationNN:I

    if-ge p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
