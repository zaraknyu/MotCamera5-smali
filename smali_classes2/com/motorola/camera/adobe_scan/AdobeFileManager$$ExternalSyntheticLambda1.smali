.class public final synthetic Lcom/motorola/camera/adobe_scan/AdobeFileManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/saving/ImageCaptureManager$AdobeScanCaptureListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/adobe_scan/AdobeFileManager;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/adobe_scan/AdobeFileManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/adobe_scan/AdobeFileManager;

    return-void
.end method


# virtual methods
.method public final onJpegImageReceived(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 17

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    sget-object v2, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->ADOBE_SCAN_TEMP_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v3, Lcom/motorola/camera/saving/FileName;

    iget-object v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-direct {v3, v4}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/saving/FileName;)V

    invoke-static {v3, v2}, Lcom/motorola/camera/storage/StorageUtils;->createTemporaryFile(Lcom/motorola/camera/saving/FileName;Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/motorola/camera/Util;->writeFile(Ljava/io/File;Ljava/nio/ByteBuffer;)V

    move-object v2, v1

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    sget-object v3, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->INSTANCE:Lcom/motorola/camera/adobe_scan/AdobeSdkManager;

    iget v7, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    iget-boolean v1, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAdobeScanAutoCapture:Z

    sget-boolean v2, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->isRetaking:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->retakeIndex:I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getScanSession()Lh/C;

    move-result-object v2

    invoke-virtual {v2}, Lh/C;->getPageCount()I

    move-result v2

    :goto_0
    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getScanSession()Lh/C;

    move-result-object v3

    iget-object v10, v3, Lh/C;->a:Lc/h;

    new-instance v5, Lc/X;

    const/4 v9, 0x0

    const/16 v11, 0x2c

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v11}, Lc/X;-><init>(Ljava/io/File;IZLc/J;Lc/h;I)V

    iget-object v4, v3, Lh/C;->a:Lc/h;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6, v2}, Lc/h;->a(Lc/X;ZI)V

    invoke-virtual {v5, v6}, Lc/X;->c(I)V

    iget-object v6, v4, Lc/h;->e:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v8, -0x1

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    :cond_2
    move v6, v8

    :goto_1
    iget-object v9, v3, Lh/C;->c:Le/J0;

    iget-object v9, v9, Le/J0;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/4 v10, 0x0

    if-eq v6, v8, :cond_3

    new-instance v4, Lf/D;

    const/4 v8, 0x2

    invoke-direct {v4, v6, v8, v10}, Lf/D;-><init>(III)V

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lc/h;->c()Lf/D;

    move-result-object v4

    :goto_2
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    new-instance v4, Lh/F;

    invoke-direct {v4, v5, v3}, Lh/F;-><init>(Lc/X;Lh/C;)V

    iget-object v3, v3, Lh/C;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getScanSession()Lh/C;

    move-result-object v3

    iget-object v3, v3, Lh/C;->e:Lh/p;

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getScanSession()Lh/C;

    move-result-object v4

    invoke-virtual {v4, v2}, Lh/C;->getPage(I)Lh/F;

    move-result-object v4

    new-instance v5, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$$ExternalSyntheticLambda2;

    invoke-direct {v5, v1}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$$ExternalSyntheticLambda2;-><init>(Z)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lh/o;

    invoke-direct {v6, v4, v5}, Lh/o;-><init>(Lh/F;Lkotlin/jvm/functions/Function1;)V

    iput-object v6, v3, Lh/p;->h:Lh/o;

    sput-boolean v10, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->isRetaking:Z

    sget-object v3, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->instrumentationData:Ljava/util/ArrayList;

    new-instance v8, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;

    const/16 v15, 0x3f

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v16}, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;-><init>(IIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v2, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v3, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->instrumentationData:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;

    invoke-virtual {v3, v1}, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->setAutoCapture(I)V

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getThumbnail()Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail;

    move-result-object v1

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getScanSession()Lh/C;

    move-result-object v3

    invoke-virtual {v3, v2}, Lh/C;->getPage(I)Lh/F;

    move-result-object v3

    invoke-virtual {v1, v7, v3}, Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail;->load(ILh/F;)V

    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->processExif()V

    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/motorola/camera/adobe_scan/AdobeFileManager$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/adobe_scan/AdobeFileManager;

    iget-object v3, v1, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->photoMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, v1, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->onCaptureAvailable:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
