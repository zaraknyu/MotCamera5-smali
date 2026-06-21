.class public final Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1$loadBitmapJob$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $scanAppResult:Lcom/adobe/scan/sdk/ScanAppConnection$Result;

.field public final synthetic this$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Lcom/adobe/scan/sdk/ScanAppConnection$Result;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1$loadBitmapJob$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    iput-object p2, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1$loadBitmapJob$1;->$scanAppResult:Lcom/adobe/scan/sdk/ScanAppConnection$Result;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1$loadBitmapJob$1;

    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1$loadBitmapJob$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1$loadBitmapJob$1;->$scanAppResult:Lcom/adobe/scan/sdk/ScanAppConnection$Result;

    invoke-direct {p1, v0, p0, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1$loadBitmapJob$1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Lcom/adobe/scan/sdk/ScanAppConnection$Result;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1$loadBitmapJob$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1$loadBitmapJob$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1$loadBitmapJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1$loadBitmapJob$1;->$scanAppResult:Lcom/adobe/scan/sdk/ScanAppConnection$Result;

    check-cast p1, Lcom/adobe/scan/sdk/ScanAppConnection$Result$PDFCreated;

    iget-object p1, p1, Lcom/adobe/scan/sdk/ScanAppConnection$Result$PDFCreated;->processedImageUris:Ljava/util/List;

    sget v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->$r8$clinit:I

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1$loadBitmapJob$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lcom/motorola/camera/Util;->loadThumbnail(ILjava/nio/ByteBuffer;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v1, v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->scanResultPreviewBitmaps$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v3, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    invoke-direct {v3, v2}, Landroidx/compose/ui/graphics/AndroidImageBitmap;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
