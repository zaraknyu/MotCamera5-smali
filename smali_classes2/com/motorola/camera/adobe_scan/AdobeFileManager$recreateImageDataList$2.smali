.class public final Lcom/motorola/camera/adobe_scan/AdobeFileManager$recreateImageDataList$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $imageList:Ljava/util/List;

.field public final synthetic this$0:Lcom/motorola/camera/adobe_scan/AdobeFileManager;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/motorola/camera/adobe_scan/AdobeFileManager;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager$recreateImageDataList$2;->$imageList:Ljava/util/List;

    iput-object p2, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager$recreateImageDataList$2;->this$0:Lcom/motorola/camera/adobe_scan/AdobeFileManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/motorola/camera/adobe_scan/AdobeFileManager$recreateImageDataList$2;

    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager$recreateImageDataList$2;->$imageList:Ljava/util/List;

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager$recreateImageDataList$2;->this$0:Lcom/motorola/camera/adobe_scan/AdobeFileManager;

    invoke-direct {p1, v0, p0, p2}, Lcom/motorola/camera/adobe_scan/AdobeFileManager$recreateImageDataList$2;-><init>(Ljava/util/List;Lcom/motorola/camera/adobe_scan/AdobeFileManager;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/adobe_scan/AdobeFileManager$recreateImageDataList$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager$recreateImageDataList$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/adobe_scan/AdobeFileManager$recreateImageDataList$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "getContentResolver(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager$recreateImageDataList$2;->$imageList:Ljava/util/List;

    invoke-static {v0, p1}, La/l;->createMediaDataListFromFileList(Ljava/util/List;Landroid/content/ContentResolver;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager$recreateImageDataList$2;->this$0:Lcom/motorola/camera/adobe_scan/AdobeFileManager;

    iget-object v2, v1, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->photoMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->processExif()V

    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    iget-object v1, v1, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->photoMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
