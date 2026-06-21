.class public synthetic Lcom/google/mlkit/common/internal/zze;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
.implements Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;
.implements Lcom/google/firebase/components/ComponentFactory;
.implements Lcom/motorola/camera/watermark/jpeg/JpegWatermarkComposer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/mlkit/common/internal/zze;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x6

    iput p1, p0, Lcom/google/mlkit/common/internal/zze;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final access$getTimerDescription(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    const/16 v0, 0x3c

    int-to-long v0, v0

    rem-long v2, p1, v0

    long-to-int v2, v2

    div-long v3, p1, v0

    rem-long/2addr v3, v0

    long-to-int v3, v3

    const/16 v4, 0xe10

    int-to-long v4, v4

    div-long/2addr p1, v4

    rem-long/2addr p1, v0

    long-to-int p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f100004

    invoke-virtual {p2, v1, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getQuantityString(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f100005

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f100003

    invoke-virtual {v2, v4, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f12058f

    filled-new-array {p1, p2, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f12058e

    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static calculateIndicatorWidthForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;
    .locals 3

    if-nez p1, :cond_0

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0

    :cond_0
    iget-boolean p0, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorFullWidth:Z

    if-nez p0, :cond_2

    instance-of p0, p1, Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz p0, :cond_2

    check-cast p1, Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContentWidth()I

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContentHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v1, v2}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    if-ge p0, v1, :cond_1

    move p0, v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p0, p0, 0x2

    sub-int v1, v2, p0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    add-int/2addr p0, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p1

    new-instance p1, Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v0, v0

    int-to-float p0, p0

    int-to-float v2, v2

    invoke-direct {p1, v1, v0, p0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p1

    :cond_2
    new-instance p0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method

.method public static fetchSync(Ljava/lang/String;)Lcom/airbnb/lottie/network/DefaultLottieFetchResult;
    .locals 1

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const-string v0, "GET"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    new-instance v0, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v0
.end method

.method public static handleDeleteSurroundingText(Landroidx/emoji2/viewsintegration/EmojiInputConnection;Landroid/text/Editable;IIZ)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_19

    if-ltz p2, :cond_19

    if-gez p3, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_19

    if-eq v2, v3, :cond_19

    if-eq v1, v2, :cond_1

    goto/16 :goto_9

    :cond_1
    const/4 v4, 0x1

    if-eqz p4, :cond_16

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-ltz v1, :cond_3

    if-ge p4, v1, :cond_2

    goto :goto_0

    :cond_2
    if-gez p2, :cond_4

    :cond_3
    :goto_0
    move v1, v3

    goto :goto_3

    :cond_4
    :goto_1
    move p4, v0

    :goto_2
    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_7

    if-eqz p4, :cond_6

    goto :goto_0

    :cond_6
    move v1, v0

    goto :goto_3

    :cond_7
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eqz p4, :cond_9

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p4

    if-nez p4, :cond_8

    goto :goto_0

    :cond_8
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_9
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_a

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_a
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p4

    if-eqz p4, :cond_b

    goto :goto_0

    :cond_b
    move p4, v4

    goto :goto_2

    :goto_3
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-ltz v2, :cond_d

    if-ge p3, v2, :cond_c

    goto :goto_4

    :cond_c
    if-gez p2, :cond_e

    :cond_d
    :goto_4
    move p3, v3

    goto :goto_7

    :cond_e
    :goto_5
    move p4, v0

    :goto_6
    if-nez p2, :cond_f

    move p3, v2

    goto :goto_7

    :cond_f
    if-lt v2, p3, :cond_10

    if-eqz p4, :cond_15

    goto :goto_4

    :cond_10
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eqz p4, :cond_12

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p4

    if-nez p4, :cond_11

    goto :goto_4

    :cond_11
    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_12
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_13

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_13
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p4

    if-eqz p4, :cond_14

    goto :goto_4

    :cond_14
    add-int/lit8 v2, v2, 0x1

    move p4, v4

    goto :goto_6

    :cond_15
    :goto_7
    if-eq v1, v3, :cond_19

    if-ne p3, v3, :cond_17

    goto :goto_9

    :cond_16
    sub-int/2addr v1, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v2, p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p3

    :cond_17
    const-class p2, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {p1, v1, p3, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroidx/emoji2/text/EmojiSpan;

    if-eqz p2, :cond_19

    array-length p4, p2

    if-lez p4, :cond_19

    array-length p4, p2

    move v2, v0

    :goto_8
    if-ge v2, p4, :cond_18

    aget-object v3, p2, v2

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_18
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->beginBatchEdit()Z

    invoke-interface {p1, p2, p3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->endBatchEdit()Z

    return v4

    :cond_19
    :goto_9
    return v0
.end method

.method public static loadResource(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    const-string/jumbo v0, "path"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/google/mlkit/common/internal/zze;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compose(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;[B[Landroid/graphics/Bitmap;ZZZILcom/motorola/camera/watermark/jpeg/JpegWatermarkService$$ExternalSyntheticLambda0;)[B
    .locals 2

    array-length p0, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p0, :cond_0

    aget-object p0, p3, v1

    move-object p3, p0

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    if-nez p3, :cond_1

    const-string p0, "JpegWatermarkService"

    const-string p1, "Label watermark bitmap is missing"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    move-object p0, p8

    move p8, p6

    move p6, p4

    move p4, p7

    move p7, p5

    new-instance p5, Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$LabelComposer$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p5, p0, v0}, Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$LabelComposer$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$$ExternalSyntheticLambda0;I)V

    invoke-static/range {p2 .. p8}, Lcom/motorola/camera/mcf/MotUtil;->appendWatermarkToJpeg([BLjava/lang/Object;ILcom/motorola/camera/mcf/McfMetadataModificationCallable;ZZZ)[B

    move-result-object p0

    iget-object p2, p1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    if-nez p2, :cond_2

    goto :goto_3

    :cond_2
    iget-object p2, p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mImageDataHolder:Lcom/motorola/camera/saving/ImageDataHolder;

    if-nez p2, :cond_3

    move p4, v1

    goto :goto_1

    :cond_3
    iget p4, p2, Lcom/motorola/camera/saving/ImageDataHolder;->mWidth:I

    :goto_1
    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    iget v1, p2, Lcom/motorola/camera/saving/ImageDataHolder;->mHeight:I

    :goto_2
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    if-ne p2, p4, :cond_5

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    add-int/2addr p2, v1

    iput p2, p1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    :cond_5
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    if-ne p2, v1, :cond_6

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    add-int/2addr p2, p4

    iput p2, p1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    :cond_6
    :goto_3
    return-object p0
.end method

.method public create(Lkotlinx/serialization/json/JsonConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 6

    .line 10
    new-instance v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    .line 11
    iget-object p0, p1, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminator:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    .line 12
    iget-object p0, p1, Lkotlinx/serialization/json/JsonConfiguration;->prettyPrintIndent:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    .line 13
    iget-object p0, p1, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminatorMode:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Landroidx/media3/decoder/Buffer;

    .line 14
    iget-boolean v4, p1, Lkotlinx/serialization/json/JsonConfiguration;->explicitNulls:Z

    .line 15
    iget-boolean v5, p1, Lkotlinx/serialization/json/JsonConfiguration;->useAlternativeNames:Z

    .line 16
    invoke-direct/range {v0 .. v5}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media3/decoder/Buffer;ZZ)V

    return-object v0
.end method

.method public create(Lcom/google/firebase/components/RestrictedComponentContainer;)Ljava/lang/Object;
    .locals 3

    iget p0, p0, Lcom/google/mlkit/common/internal/zze;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    .line 1
    new-instance p0, Lcom/google/mlkit/vision/barcode/internal/zzi;

    const-class v0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    invoke-virtual {p1, v0}, Lcom/google/firebase/components/RestrictedComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    invoke-direct {p0, p1}, Lcom/google/mlkit/vision/barcode/internal/zzi;-><init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;)V

    return-object p0

    .line 2
    :pswitch_0
    new-instance p0, Lcom/google/mlkit/common/sdkinternal/Cleaner;

    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/Cleaner;-><init>()V

    new-instance p1, Lcom/google/mlkit/common/sdkinternal/zza;

    .line 3
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/google/mlkit/common/sdkinternal/zzd;

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/Cleaner;->zza:Ljava/lang/ref/ReferenceQueue;

    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/Cleaner;->zzb:Ljava/util/Set;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/mlkit/common/sdkinternal/zzd;-><init>(Lcom/google/mlkit/common/sdkinternal/Cleaner;Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;Lcom/google/mlkit/common/sdkinternal/zza;)V

    .line 5
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance p1, Lcom/motorola/camera/mcf/Mcf$8;

    const/16 v0, 0x12

    invoke-direct {p1, v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/Thread;

    .line 7
    const-string v1, "MlKitCleaner"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 9
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public timeUsToTargetTime(J)J
    .locals 0

    return-wide p1
.end method

.method public updateIndicatorForOffset(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/view/View;FLandroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/mlkit/common/internal/zze;->calculateIndicatorWidthForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p1, p3}, Lcom/google/mlkit/common/internal/zze;->calculateIndicatorWidthForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p1

    iget p2, p0, Landroid/graphics/RectF;->left:F

    float-to-int p2, p2

    iget p3, p1, Landroid/graphics/RectF;->left:F

    float-to-int p3, p3

    invoke-static {p2, p4, p3}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IFI)I

    move-result p2

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/RectF;->right:F

    float-to-int p0, p0

    iget p1, p1, Landroid/graphics/RectF;->right:F

    float-to-int p1, p1

    invoke-static {p0, p4, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IFI)I

    move-result p0

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p5, p2, p3, p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method
