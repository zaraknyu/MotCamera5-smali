.class public Lokio/Timeout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ogg/OggSeeker;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;
.implements Lcom/google/firebase/components/ComponentFactory;
.implements Lcom/motorola/camera/watermark/jpeg/JpegWatermarkComposer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lokio/Timeout;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x6

    iput p1, p0, Lokio/Timeout;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final access$lookupAndInterpolate(F[F[F)F
    .locals 7

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v2

    if-ltz v2, :cond_0

    aget p0, p2, v2

    mul-float/2addr v1, p0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    neg-int v2, v2

    add-int/lit8 v3, v2, -0x1

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    if-lt v3, v4, :cond_2

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget v0, p1, v0

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    aget p1, p2, p1

    cmpg-float p2, v0, v5

    if-nez p2, :cond_1

    return v5

    :cond_1
    div-float/2addr p1, v0

    mul-float/2addr p1, p0

    return p1

    :cond_2
    const/4 p0, -0x1

    if-ne v3, p0, :cond_3

    const/4 p0, 0x0

    aget p1, p1, p0

    aget p0, p2, p0

    move p2, p1

    move p1, v5

    move v3, p1

    goto :goto_0

    :cond_3
    aget p0, p1, v3

    aget p1, p1, v2

    aget v3, p2, v3

    aget p2, p2, v2

    move v6, p1

    move p1, p0

    move p0, p2

    move p2, v6

    :goto_0
    cmpg-float v2, p1, p2

    if-nez v2, :cond_4

    move v0, v5

    goto :goto_1

    :cond_4
    sub-float/2addr v0, p1

    sub-float/2addr p2, p1

    div-float/2addr v0, p2

    :goto_1
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v5, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    sub-float/2addr p0, v3

    mul-float/2addr p0, p1

    add-float/2addr p0, v3

    mul-float/2addr p0, v1

    return p0
.end method


# virtual methods
.method public compose(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;[B[Landroid/graphics/Bitmap;ZZZILcom/motorola/camera/watermark/jpeg/JpegWatermarkService$$ExternalSyntheticLambda0;)[B
    .locals 1

    array-length p0, p3

    if-nez p0, :cond_0

    const-string p0, "JpegWatermarkService"

    const-string p1, "Watermark bitmaps are missing"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length p0, p3

    invoke-static {p0, p7}, Lcom/motorola/camera/mcf/MotUtil;->setWmArrPositions(II)[I

    move-result-object p0

    array-length p4, p3

    move-object p1, p8

    move p8, p6

    move p6, p7

    move p7, p5

    new-instance p5, Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$LabelComposer$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p5, p1, v0}, Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$LabelComposer$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$$ExternalSyntheticLambda0;I)V

    move-object p1, p2

    move-object p2, p3

    move-object p3, p0

    invoke-static/range {p1 .. p8}, Lcom/motorola/camera/mcf/MotUtil;->addNewWatermarkToJpeg([B[Ljava/lang/Object;[IILcom/motorola/camera/mcf/McfMetadataModificationCallable;IZZ)[B

    move-result-object p0

    return-object p0
.end method

.method public create(Lcom/google/firebase/components/RestrictedComponentContainer;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, Lokio/Timeout;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/google/firebase/components/RestrictedComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;-><init>(Landroid/content/Context;)V

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    const-class v0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;

    invoke-virtual {p1, v0}, Lcom/google/firebase/components/RestrictedComponentContainer;->getProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;-><init>(Lcom/google/firebase/inject/Provider;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method public createSeekMap()Landroidx/media3/extractor/SeekMap;
    .locals 2

    new-instance p0, Landroidx/media3/extractor/SeekMap$Unseekable;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v1}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    return-object p0
.end method

.method public getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "not implemented"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getEndProgress()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getMinimumLoadableRetryCount(I)I
    .locals 0

    const/4 p0, 0x7

    if-ne p1, p0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0
.end method

.method public getStartDelayProgress()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCachedValueEnabled(F)Z
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not implemented"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isValueChanged(F)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;)J
    .locals 0

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public startSeek(J)V
    .locals 0

    return-void
.end method
