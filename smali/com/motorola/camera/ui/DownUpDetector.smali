.class public Lcom/motorola/camera/ui/DownUpDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
.implements Lcom/motorola/camera/ui/widgets/TrimSeekBar$OnTrimCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public mListener:Ljava/lang/Object;

.field public mStillDown:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/ui/DownUpDetector;->$r8$classId:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/DownUpDetector;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;Z)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/ui/DownUpDetector;->$r8$classId:I

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/motorola/camera/ui/DownUpDetector;-><init>(ILjava/lang/Object;)V

    .line 8
    iput-boolean p2, p0, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/mkv/Sniffer;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lcom/motorola/camera/ui/DownUpDetector;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    .line 2
    iput p3, p0, Lcom/motorola/camera/ui/DownUpDetector;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyDisplayP3(Ljava/io/File;Ljava/io/ByteArrayOutputStream;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p1, Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-direct {p1, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->addDisplayP3App2ByteArray()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray(Z)[B

    move-result-object p1

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :goto_0
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    :goto_1
    move-object v0, v1

    goto :goto_4

    :catch_0
    move-exception p0

    :goto_2
    move-object v0, v1

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v2, v0

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v2, v0

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v2, v0

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v2, v0

    :goto_3
    :try_start_3
    const-string p1, "BitmapEncoder"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_3
    move-exception p0

    :goto_4
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method


# virtual methods
.method public add(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    return-void
.end method

.method public build()Landroidx/media3/common/FlagSet;
    .locals 2

    iget-boolean v0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput-boolean v1, p0, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    new-instance v0, Landroidx/media3/common/FlagSet;

    iget-object p0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, p0}, Landroidx/media3/common/FlagSet;-><init>(Landroid/util/SparseBooleanArray;)V

    return-object v0
.end method

.method public defaultIsRtl()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    return p0
.end method

.method public encode(Ljava/io/File;)Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getThumbnailJpegQuality()I

    move-result v3

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-static {p1, v1}, Lcom/motorola/camera/ui/DownUpDetector;->applyDisplayP3(Ljava/io/File;Ljava/io/ByteArrayOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v1, v0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v1, v0

    goto :goto_1

    :cond_0
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object p0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v2

    invoke-virtual {p0, p1, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_0
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    :catchall_2
    move-exception p0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :catch_2
    move-exception p0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    :try_start_4
    const-string p1, "BitmapEncoder"

    const-string v2, "Failed to encode Bitmap"

    invoke-static {p1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    const/4 p0, 0x0

    return p0

    :goto_2
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method public isRtl(Ljava/lang/CharSequence;I)Z
    .locals 6

    if-eqz p1, :cond_6

    if-ltz p2, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p2

    if-ltz v0, :cond_6

    iget-object v0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast v0, Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/DownUpDetector;->defaultIsRtl()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x2

    move v2, v0

    move v3, v1

    :goto_0
    const/4 v4, 0x1

    if-ge v2, p2, :cond_3

    if-ne v3, v1, :cond_3

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v3

    sget-object v5, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Lcom/motorola/camera/ui/DownUpDetector;

    if-eqz v3, :cond_2

    if-eq v3, v4, :cond_1

    if-eq v3, v1, :cond_1

    packed-switch v3, :pswitch_data_0

    move v3, v1

    goto :goto_1

    :cond_1
    :pswitch_0
    move v3, v0

    goto :goto_1

    :cond_2
    :pswitch_1
    move v3, v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_5

    if-eq v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/DownUpDetector;->defaultIsRtl()Z

    move-result p0

    return p0

    :cond_4
    return v0

    :cond_5
    return v4

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public nextItem()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    return-void
.end method

.method public onPostFling-RZ2iAVY(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of p1, p5, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection$onPostFling$1;

    if-eqz p1, :cond_0

    move-object p1, p5

    check-cast p1, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection$onPostFling$1;

    iget p2, p1, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection$onPostFling$1;->label:I

    const/high16 v0, -0x80000000

    and-int v1, p2, v0

    if-eqz v1, :cond_0

    sub-int/2addr p2, v0

    iput p2, p1, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection$onPostFling$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection$onPostFling$1;

    check-cast p5, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    invoke-direct {p1, p0, p5}, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection$onPostFling$1;-><init>(Lcom/motorola/camera/ui/DownUpDetector;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, p1, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection$onPostFling$1;->result:Ljava/lang/Object;

    sget-object p5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p1, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection$onPostFling$1;->label:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 p0, 0x2

    if-ne v0, p0, :cond_1

    iget-wide p3, p1, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection$onPostFling$1;->J$0:J

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p2, Landroidx/compose/ui/unit/Velocity;

    iget-wide p0, p2, Landroidx/compose/ui/unit/Velocity;->packedValue:J

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-wide p3, p1, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection$onPostFling$1;->J$0:J

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p2, p0, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_6

    iget-object p0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/gestures/ScrollingLogic;

    iget-boolean p2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->isFlinging:Z

    if-eqz p2, :cond_4

    move-wide p0, v2

    goto :goto_2

    :cond_4
    iput-wide p3, p1, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection$onPostFling$1;->J$0:J

    iput v1, p1, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection$onPostFling$1;->label:I

    invoke-virtual {p0, p3, p4, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->doFlingAnimation-QWom1Mo(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p5, :cond_5

    return-object p5

    :cond_5
    :goto_1
    check-cast p2, Landroidx/compose/ui/unit/Velocity;

    iget-wide p0, p2, Landroidx/compose/ui/unit/Velocity;->packedValue:J

    :goto_2
    invoke-static {p3, p4, p0, p1}, Landroidx/compose/ui/unit/Velocity;->minus-AH228Gc(JJ)J

    move-result-wide v2

    :cond_6
    new-instance p0, Landroidx/compose/ui/unit/Velocity;

    invoke-direct {p0, v2, v3}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    return-object p0
.end method

.method public onPostScroll-DzOQY0M(IJJ)J
    .locals 0

    iget-boolean p1, p0, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/gestures/ScrollingLogic;

    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    invoke-interface {p1}, Landroidx/compose/foundation/gestures/ScrollableState;->isScrollInProgress()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    invoke-virtual {p0, p4, p5}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-k-4lQ0M(J)F

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded(F)F

    move-result p2

    invoke-interface {p1, p2}, Landroidx/compose/foundation/gestures/ScrollableState;->dispatchRawDelta(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toOffset-tuRUvjQ(F)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public onTrim(Z)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    if-eq v1, p1, :cond_2

    iput-boolean p1, p0, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->setPlayHeadVisible(Z)V

    iget-object p1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    invoke-virtual {p1, p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->setSelectingRange(Z)V

    return-void

    :cond_0
    const-string/jumbo p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string/jumbo p0, "viewBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    return-void
.end method

.method public print(B)V
    .locals 2

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/mkv/Sniffer;

    int-to-long v0, p1

    .line 6
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/Sniffer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(C)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/mkv/Sniffer;

    const/4 v0, 0x1

    .line 2
    iget v1, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    invoke-virtual {p0, v1, v0}, Landroidx/media3/extractor/mkv/Sniffer;->ensureTotalCapacity(II)V

    .line 3
    iget-object v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast v0, [C

    iget v1, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    aput-char p1, v0, v1

    return-void
.end method

.method public print(I)V
    .locals 2

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/mkv/Sniffer;

    int-to-long v0, p1

    .line 10
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/Sniffer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(J)V
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/mkv/Sniffer;

    .line 12
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/Sniffer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/mkv/Sniffer;

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/Sniffer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(S)V
    .locals 2

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/mkv/Sniffer;

    int-to-long v0, p1

    .line 8
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/Sniffer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public printQuoted(Ljava/lang/String;)V
    .locals 10

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/mkv/Sniffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    invoke-virtual {p0, v2, v0}, Landroidx/media3/extractor/mkv/Sniffer;->ensureTotalCapacity(II)V

    iget-object v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast v0, [C

    iget v2, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x22

    aput-char v4, v0, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v2, v3

    move v6, v3

    :goto_0
    if-ge v6, v2, :cond_5

    aget-char v7, v0, v6

    sget-object v8, Lkotlinx/serialization/json/internal/StringOpsKt;->ESCAPE_MARKERS:[B

    array-length v9, v8

    if-ge v7, v9, :cond_4

    aget-byte v7, v8, v7

    if-eqz v7, :cond_4

    sub-int v0, v6, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_1
    const/4 v3, 0x1

    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v6, v1}, Landroidx/media3/extractor/mkv/Sniffer;->ensureTotalCapacity(II)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sget-object v8, Lkotlinx/serialization/json/internal/StringOpsKt;->ESCAPE_MARKERS:[B

    array-length v9, v8

    if-ge v7, v9, :cond_2

    aget-byte v8, v8, v7

    if-nez v8, :cond_0

    iget-object v3, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast v3, [C

    add-int/lit8 v8, v6, 0x1

    int-to-char v7, v7

    aput-char v7, v3, v6

    :goto_2
    move v6, v8

    goto :goto_3

    :cond_0
    if-ne v8, v3, :cond_1

    sget-object v3, Lkotlinx/serialization/json/internal/StringOpsKt;->ESCAPE_STRINGS:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Landroidx/media3/extractor/mkv/Sniffer;->ensureTotalCapacity(II)V

    iget-object v7, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast v7, [C

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v5, v8, v7, v6}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v6

    iput v3, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    move v6, v3

    goto :goto_3

    :cond_1
    iget-object v3, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast v3, [C

    const/16 v7, 0x5c

    aput-char v7, v3, v6

    add-int/lit8 v7, v6, 0x1

    int-to-char v8, v8

    aput-char v8, v3, v7

    add-int/lit8 v6, v6, 0x2

    iput v6, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    goto :goto_3

    :cond_2
    iget-object v3, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast v3, [C

    add-int/lit8 v8, v6, 0x1

    int-to-char v7, v7

    aput-char v7, v3, v6

    goto :goto_2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v6, v3}, Landroidx/media3/extractor/mkv/Sniffer;->ensureTotalCapacity(II)V

    iget-object p1, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast p1, [C

    add-int/lit8 v0, v6, 0x1

    aput-char v4, p1, v6

    iput v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    return-void

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_5
    add-int/lit8 p1, v2, 0x1

    aput-char v4, v0, v2

    iput p1, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    return-void
.end method

.method public space()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/DownUpDetector;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    if-eqz v0, :cond_0

    const-string p0, "FALL_THROUGH"

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public unIndent()V
    .locals 0

    return-void
.end method
