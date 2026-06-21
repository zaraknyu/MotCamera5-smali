.class public final Lcom/motorola/camera/service/BgJobService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/motorola/camera/service/BgJobService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "ButtonHandler",
        "MotCamera5-v10.0.47.24_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final messenger:Landroid/os/Messenger;

.field public final responseMap:Ljava/util/LinkedHashMap;

.field public final saveListener:Lcom/motorola/camera/service/BgJobService$saveListener$1;

.field public final subTaskCount:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/service/BgJobService;->responseMap:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/service/BgJobService;->subTaskCount:Ljava/util/LinkedHashMap;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Landroidx/appcompat/app/AlertController$ButtonHandler;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertController$ButtonHandler;-><init>(Lcom/motorola/camera/service/BgJobService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/motorola/camera/service/BgJobService;->messenger:Landroid/os/Messenger;

    new-instance v0, Lcom/motorola/camera/service/BgJobService$saveListener$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/service/BgJobService$saveListener$1;-><init>(Lcom/motorola/camera/service/BgJobService;)V

    iput-object v0, p0, Lcom/motorola/camera/service/BgJobService;->saveListener:Lcom/motorola/camera/service/BgJobService$saveListener$1;

    return-void
.end method

.method public static acknowledgeJob(Landroid/os/Message;Lcom/motorola/camera/background/common/TaskId;)V
    .locals 3

    iget-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "task_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can Not acknowledge job "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BgJobService"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static addMetadataToJpeg(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 6

    const-string v0, "JOB_CONTEXT"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "BgJobContext"

    if-nez v0, :cond_1

    const-string p0, "Cannot parse empty string"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "metadataContext"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string p0, "Missing metadataContext object"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "makerNotes"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string p0, "Missing makernotes object"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_4

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    new-instance v2, Lcom/motorola/camera/background/provider/BgJobContext$MetadataContext;

    invoke-direct {v2, v0}, Lcom/motorola/camera/background/provider/BgJobContext$MetadataContext;-><init>(Ljava/nio/ByteBuffer;)V

    :goto_1
    if-eqz v2, :cond_5

    new-instance p0, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    iget-object v0, v2, Lcom/motorola/camera/background/provider/BgJobContext$MetadataContext;->makerNotesData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setMakernoteByteArray([B)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray(Z)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->setByteBuffer(Ljava/nio/ByteBuffer;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static isValidData(Landroid/os/Bundle;)Z
    .locals 3

    const-string/jumbo v0, "task_id"

    const-class v1, Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/common/TaskId;

    if-eqz p0, :cond_1

    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    iget-wide v1, p0, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    long-to-int p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/CameraData;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "TaskID data can not be null "

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadAuxiliaryData(JLjava/util/ArrayList;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Landroid/content/Context;)Z
    .locals 7

    invoke-static {p4, p0, p1}, Lcom/motorola/camera/background/provider/FileDataContract;->retrieveFileInBuffer(Landroid/content/Context;J)[B

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object p0, p3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    invoke-virtual {p0, p4, p1}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->parseFromJson(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    sget-object p1, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHRENDER:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/mcf/McfDepthRender;

    const-string v0, "BgJobService"

    if-eqz p1, :cond_4

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v1, -0x1

    move-wide v3, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;

    if-eqz p2, :cond_1

    iget-object v5, p2, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->category:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const-string v6, "ORIGIN"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-wide v3, p2, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->fid:J

    goto :goto_0

    :cond_2
    cmp-long p1, v3, v1

    if-eqz p1, :cond_3

    invoke-static {p4, v3, v4}, Lcom/motorola/camera/background/provider/FileDataContract;->retrieveFileInBuffer(Landroid/content/Context;J)[B

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object p2, p3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mAuxImages:Ljava/util/HashMap;

    const-string p4, "mAuxImages"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;->DEPTH_RENDER_ORIGINAL:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;

    invoke-virtual {p2, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const-string p0, "missing origin image for depth capture"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    sget-object p1, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHMAP:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/McfAuxFrameData;

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getData()[B

    move-result-object p0

    if-nez p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "missing depth map for record "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public static notifyJobStatus(Landroid/os/Messenger;Lcom/motorola/camera/background/common/TaskId;I)V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p2

    const-class v1, Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p2

    const-string/jumbo v1, "task_id"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Messenger for task "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is dead"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BgJobService"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static retrieveCaptureData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;
    .locals 2

    const-string v0, "DB_URI"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Lcom/motorola/camera/utility/ColorUtil;->readByteRecord(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/motorola/camera/utility/GsonUtility;->convertFromJson(Ljava/lang/String;)Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mByteBufferUri:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/motorola/camera/utility/ColorUtil;->readByteRecord(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->setByteBuffer(Ljava/nio/ByteBuffer;)V

    iget-object p0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed to deserialize json to CapturedImageMediaData."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DB URL can not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final cancelSaveImage(Landroid/os/Bundle;)V
    .locals 5

    const-string/jumbo v0, "task_id"

    const-class v1, Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/background/common/TaskId;

    iget-object p0, p0, Lcom/motorola/camera/service/BgJobService;->responseMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Messenger;

    const-string v0, "BgJobService"

    if-eqz p1, :cond_2

    sget-object v1, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v2, v1, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    iget-wide v3, p1, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/CameraData;

    if-eqz v2, :cond_0

    new-instance v3, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v2, v4}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/saving/SaveImageService;Lcom/motorola/camera/CameraData;I)V

    invoke-virtual {v1, v3}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz p0, :cond_1

    const/4 v0, 0x5

    invoke-static {p0, p1, v0}, Lcom/motorola/camera/service/BgJobService;->notifyJobStatus(Landroid/os/Messenger;Lcom/motorola/camera/background/common/TaskId;I)V

    return-void

    :cond_1
    const-string/jumbo p0, "resultReceiver is null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string p0, "Missing taskID/callback information"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/service/BgJobService;->messenger:Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iget-object p0, p0, Lcom/motorola/camera/service/BgJobService;->saveListener:Lcom/motorola/camera/service/BgJobService$saveListener$1;

    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->addSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object p0, p0, Lcom/motorola/camera/service/BgJobService;->saveListener:Lcom/motorola/camera/service/BgJobService$saveListener$1;

    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->removeSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final saveBgProcessImage(Landroid/os/Bundle;Landroid/content/Context;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "getTaskID(...)"

    iget-object v5, v0, Lcom/motorola/camera/service/BgJobService;->responseMap:Ljava/util/LinkedHashMap;

    const-string v6, "ERROR_CASE"

    const-string v7, "GLOBAL_UUID"

    const-string v8, "DATE_TYPE"

    const-string v9, "FILE_NAME"

    const-string v10, "URI"

    const-string v11, "Failed to save Image: "

    const-string/jumbo v12, "task_id"

    const-string v13, "context"

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/motorola/camera/service/BgJobService;->isValidData(Landroid/os/Bundle;)Z

    move-result v13

    const-string v14, "BgJobService"

    if-nez v13, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Duplicate job. Job will be ignored. Data received: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p1}, Lcom/motorola/camera/service/BgJobService;->cancelSaveImage(Landroid/os/Bundle;)V

    return-void

    :cond_0
    move-object/from16 v16, v14

    :try_start_0
    const-string v15, "JOB_CONTEXT"
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1c

    :try_start_1
    invoke-virtual {v1, v15}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/google/android/gms/internal/mlkit_vision_common/zzil;->parseJobContext(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v15
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1c

    :try_start_2
    const-class v13, Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {v13}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/motorola/camera/background/common/TaskId;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1e

    if-eqz v13, :cond_1

    :try_start_3
    iget-object v14, v0, Lcom/motorola/camera/service/BgJobService;->subTaskCount:Ljava/util/LinkedHashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v18

    move-object/from16 v19, v15

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v23, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    move-object v2, v11

    move-object/from16 v21, v12

    :goto_0
    move-object/from16 v4, v16

    goto/16 :goto_28

    :catch_1
    move-exception v0

    move-object v2, v8

    move-object v8, v6

    move-object v6, v2

    move-object v3, v10

    move-object v2, v11

    move-object v11, v4

    move-object v10, v5

    move-object v5, v9

    move-object v9, v12

    move-object/from16 v4, v16

    goto/16 :goto_29

    :cond_1
    move-object/from16 v19, v15

    :goto_1
    :try_start_4
    invoke-static/range {v19 .. v19}, Lkotlin/collections/MapsKt;->toList(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v14

    new-instance v15, Landroidx/viewpager/widget/ViewPager$1;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1c

    move-object/from16 v18, v4

    const/16 v4, 0xf

    :try_start_5
    invoke-direct {v15, v4}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    invoke-static {v14, v15}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v4
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_19
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_18

    :try_start_6
    sget-object v14, Lcom/motorola/camera/BurstShotFileUtils;->FORMAT_BURST_SUFFIX:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v14
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1a

    :try_start_7
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object/from16 v20, v4

    const/4 v4, 0x0

    const/4 v15, 0x0

    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1b

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_19
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_18

    add-int/lit8 v22, v15, 0x1

    if-ltz v15, :cond_1a

    move-object/from16 v23, v5

    :try_start_8
    move-object/from16 v5, v21

    check-cast v5, Lkotlin/Pair;

    iget-object v5, v5, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_17
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_16

    move-object/from16 v21, v12

    :try_start_9
    iget-object v12, v5, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->jpegFids:Ljava/util/ArrayList;

    move-object/from16 v24, v12

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v12
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_15
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_14

    move-object/from16 v25, v6

    const/4 v6, 0x5

    if-lt v12, v6, :cond_19

    if-eqz v3, :cond_3

    :try_start_a
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->size()I

    move-result v6

    const/4 v12, 0x1

    if-le v6, v12, :cond_2

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->size()I

    move-result v6

    sub-int/2addr v6, v12

    if-ge v15, v6, :cond_2

    invoke-static {v3}, Lcom/motorola/camera/utility/GsonUtility;->convertToJson(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/camera/utility/GsonUtility;->convertFromJson(Ljava/lang/String;)Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    move-result-object v6

    invoke-virtual {v3}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->setByteBuffer(Ljava/nio/ByteBuffer;)V

    iget-object v12, v6, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v12, v12, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    invoke-virtual {v12, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_6

    :goto_3
    move-object/from16 v26, v7

    move-object/from16 v27, v8

    :goto_4
    move-object/from16 v31, v9

    move-object/from16 v32, v10

    move-object v2, v11

    goto/16 :goto_0

    :goto_5
    move-object v6, v8

    move-object v5, v9

    move-object v3, v10

    move-object v2, v11

    move-object/from16 v4, v16

    move-object/from16 v11, v18

    move-object/from16 v9, v21

    move-object/from16 v10, v23

    move-object/from16 v8, v25

    goto/16 :goto_29

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_5

    :cond_2
    iget-object v6, v3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    move-object v6, v3

    goto :goto_6

    :cond_3
    :try_start_b
    invoke-static {v2, v1}, Lcom/motorola/camera/service/BgJobService;->retrieveCaptureData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    move-result-object v6

    :goto_6
    iget-object v12, v6, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    const-string v15, "null cannot be cast to non-null type com.motorola.camera.fsm.camera.record.ImageCaptureRecord"

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v15, v12

    check-cast v15, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_13
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_12

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    :try_start_c
    iget-wide v7, v5, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->slot:J

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->values()[Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    move-result-object v5

    long-to-int v7, v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    aget-object v5, v5, v7

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->size()I

    move-result v7
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_10

    if-le v7, v8, :cond_5

    :try_start_d
    iput-object v5, v6, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iget-object v5, v12, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v7, "ALTERNATE_SHOT"

    invoke-virtual {v5, v7, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v5, v12, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v7, "UUID"

    invoke-virtual {v5, v7, v14}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v6, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "alternate_shot_index_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v12, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, v6, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    sget-object v5, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-eq v4, v5, :cond_4

    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->setActiveVideoFile(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    goto/16 :goto_4

    :catch_5
    move-exception v0

    move-object v5, v9

    move-object v3, v10

    move-object v2, v11

    move-object/from16 v4, v16

    move-object/from16 v11, v18

    move-object/from16 v9, v21

    move-object/from16 v10, v23

    move-object/from16 v8, v25

    move-object/from16 v7, v26

    move-object/from16 v6, v27

    goto/16 :goto_29

    :cond_4
    :goto_7
    move v4, v8

    :cond_5
    :try_start_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static/range {v24 .. v24}, Lcom/google/android/gms/internal/mlkit_vision_common/zzil;->parseAlgContext(Ljava/util/ArrayList;)Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;

    move-result-object v5

    iget-object v12, v5, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->jpegFids:Ljava/util/ArrayList;

    move/from16 v28, v4

    iget-wide v3, v5, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->thumbFid:J

    move-wide/from16 v29, v7

    iget-wide v7, v5, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->exifFid:J
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_10

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    :try_start_f
    iget-wide v9, v5, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->makerNoteFid:J

    move-object/from16 v33, v13

    move-object/from16 v34, v14

    iget-wide v13, v5, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->app6Fid:J

    move-wide/from16 v35, v3

    iget-wide v3, v5, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->auxliaryDataFid:J

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v24
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e

    move-object/from16 v37, v11

    const-string v11, "]"

    if-nez v24, :cond_18

    const-wide/16 v38, -0x1

    cmp-long v24, v35, v38

    if-eqz v24, :cond_18

    cmp-long v24, v7, v38

    if-eqz v24, :cond_18

    cmp-long v24, v9, v38

    if-eqz v24, :cond_18

    cmp-long v24, v13, v38

    if-eqz v24, :cond_18

    :try_start_10
    invoke-static {v2, v7, v8}, Lcom/motorola/camera/background/provider/FileDataContract;->retrieveFileInBuffer(Landroid/content/Context;J)[B

    move-result-object v7

    invoke-static {v2, v9, v10}, Lcom/motorola/camera/background/provider/FileDataContract;->retrieveFileInBuffer(Landroid/content/Context;J)[B

    move-result-object v8

    invoke-static {v2, v13, v14}, Lcom/motorola/camera/background/provider/FileDataContract;->retrieveFileInBuffer(Landroid/content/Context;J)[B

    move-result-object v9

    if-eqz v8, :cond_17

    if-eqz v9, :cond_17

    invoke-virtual {v6}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    invoke-virtual {v10}, Ljava/nio/Buffer;->position()I

    move-result v14

    invoke-virtual {v10}, Ljava/nio/Buffer;->limit()I

    move-result v10

    invoke-direct {v11, v13, v14, v10}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const/4 v10, 0x0

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v13, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;

    iget-wide v13, v13, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->fid:J

    iget-object v10, v15, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v10}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isBokeh()Z

    move-result v10
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    if-eqz v10, :cond_8

    :try_start_11
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v40, v10

    move-object/from16 v10, v24

    check-cast v10, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide/from16 v41, v13

    iget-object v13, v10, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->category:Ljava/lang/String;

    const-string v14, "RENDER"

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    iget-wide v13, v10, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->fid:J
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    :goto_9
    move-object/from16 v4, v16

    :goto_a
    move-object/from16 v2, v37

    goto/16 :goto_28

    :catch_7
    move-exception v0

    :goto_b
    move-object/from16 v4, v16

    :goto_c
    move-object/from16 v11, v18

    move-object/from16 v9, v21

    move-object/from16 v10, v23

    move-object/from16 v8, v25

    move-object/from16 v7, v26

    :goto_d
    move-object/from16 v6, v27

    move-object/from16 v5, v31

    move-object/from16 v3, v32

    move-object/from16 v2, v37

    goto/16 :goto_29

    :cond_6
    move-wide/from16 v13, v41

    :goto_e
    move-object/from16 v10, v40

    goto :goto_8

    :cond_7
    move-wide/from16 v41, v13

    :cond_8
    :try_start_12
    invoke-static {v2, v13, v14}, Lcom/motorola/camera/background/provider/FileDataContract;->retrieveFileInBuffer(Landroid/content/Context;J)[B

    move-result-object v10

    if-eqz v10, :cond_16

    move-object/from16 v24, v7

    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata;

    move-object/from16 v40, v5

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v7, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    new-instance v5, Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-direct {v5, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v7, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->copyPhotoMetadata(Lcom/motorola/camera/photometadata/PhotoMetadata;)V

    if-eqz v24, :cond_9

    const-string v5, "Exif currently not supported by BgProcessing"
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    move-object/from16 v10, v16

    :try_start_13
    invoke-static {v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :catch_8
    move-exception v0

    :goto_f
    move-object v4, v10

    goto :goto_a

    :catch_9
    move-exception v0

    :goto_10
    move-object v4, v10

    goto :goto_c

    :catch_a
    move-exception v0

    move-object/from16 v10, v16

    goto :goto_f

    :catch_b
    move-exception v0

    move-object/from16 v10, v16

    goto :goto_10

    :cond_9
    move-object/from16 v10, v16

    :goto_11
    invoke-virtual {v7, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setMakernoteByteArray([B)V

    invoke-virtual {v7, v9}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setApp6ByteArray([B)V

    move-wide/from16 v8, v35

    invoke-static {v2, v8, v9}, Lcom/motorola/camera/background/provider/FileDataContract;->retrieveFileInBuffer(Landroid/content/Context;J)[B

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v7, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setThumbnailBytes([B)V

    :cond_a
    invoke-static {v2, v13, v14}, Lcom/motorola/camera/background/provider/FileDataContract;->getImageDims(Landroid/content/Context;J)Landroid/util/Size;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v8

    goto :goto_12

    :cond_b
    const/4 v8, 0x0

    :goto_12
    if-lez v8, :cond_f

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v8

    goto :goto_13

    :cond_c
    const/4 v8, 0x0

    :goto_13
    if-lez v8, :cond_f

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_14

    :cond_d
    const/4 v8, 0x0

    :goto_14
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_15

    :cond_e
    const/4 v5, 0x0

    :goto_15
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "ImageWidth"

    invoke-virtual {v7, v9, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "ImageLength"

    invoke-virtual {v7, v9, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "PixelXDimension"

    invoke-virtual {v7, v9, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "PixelYDimension"

    invoke-virtual {v7, v8, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray(Z)[B

    move-result-object v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->setByteBuffer(Ljava/nio/ByteBuffer;)V

    iget-object v5, v15, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v5}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isBokeh()Z

    move-result v5

    if-eqz v5, :cond_10

    cmp-long v5, v3, v38

    if-eqz v5, :cond_10

    invoke-static {v3, v4, v12, v15, v2}, Lcom/motorola/camera/service/BgJobService;->loadAuxiliaryData(JLjava/util/ArrayList;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Lcom/motorola/camera/service/BgJobService;->saveNormalProcessImage(Landroid/os/Bundle;Landroid/content/Context;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    const/4 v3, 0x1

    :goto_16
    move-object/from16 v4, v40

    goto :goto_17

    :cond_10
    const/4 v3, 0x0

    goto :goto_16

    :goto_17
    iget-object v4, v4, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->algoAuxDataFids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    invoke-static {v2, v7, v8}, Lcom/motorola/camera/background/provider/FileDataContract;->retrieveFileInBuffer(Landroid/content/Context;J)[B

    move-result-object v5

    new-instance v7, Ljava/lang/String;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v8, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v5, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object v5, v15, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    invoke-virtual {v5, v2, v7}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->parseFromJson(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_18

    :cond_11
    sget-boolean v4, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v4, :cond_14

    const-string v4, "JOB_METRICS"

    const-class v5, Lcom/motorola/camera/background/common/JobMetrics;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/background/common/JobMetrics;
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    if-eqz v4, :cond_13

    iget-wide v7, v4, Lcom/motorola/camera/background/common/JobMetrics;->timeCompletedMs:J

    if-eqz v33, :cond_12

    move-object/from16 v13, v33

    :try_start_14
    iget-wide v11, v13, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_19

    :cond_12
    move-object/from16 v13, v33

    const/4 v5, 0x0

    :goto_19
    iget-wide v11, v4, Lcom/motorola/camera/background/common/JobMetrics;->timeStartedMs:J

    iget-wide v14, v4, Lcom/motorola/camera/background/common/JobMetrics;->timeAddedMs:J

    sub-long v14, v11, v14

    sub-long v11, v7, v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v35

    sub-long v7, v35, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Job metrics for "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", Waiting in queue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms, Processing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms, Processing to SiS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_13
    move-object/from16 v13, v33

    :goto_1a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v4, v4, v29

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saveBgProcessImage dur:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_14
    move-object/from16 v13, v33

    :goto_1b
    if-nez v3, :cond_15

    invoke-static {v6}, Lcom/motorola/camera/saving/SaveImageService;->saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    :cond_15
    move-object/from16 v3, p3

    move-object/from16 v16, v10

    move-object/from16 v12, v21

    move/from16 v15, v22

    move-object/from16 v5, v23

    move-object/from16 v6, v25

    move-object/from16 v7, v26

    move-object/from16 v8, v27

    move/from16 v4, v28

    move-object/from16 v9, v31

    move-object/from16 v10, v32

    move-object/from16 v14, v34

    move-object/from16 v11, v37

    goto/16 :goto_2

    :cond_16
    move-object/from16 v10, v16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BG Jpeg is null for shot: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v2, "no file to retrieve"

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move-object/from16 v24, v7

    move-object/from16 v10, v16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missing meta data: [exif="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", makerNote="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", app6="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    const-string v2, "missing meta data"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_9
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8

    :cond_18
    move-object/from16 v4, v16

    move-wide/from16 v2, v35

    :try_start_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid Jpeg file Id(s): [thumbFid="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", exifFid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", makerNoteFid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", app6Fid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    const-string v2, "invalid Jpeg file Id(s)"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_c
    move-exception v0

    goto/16 :goto_a

    :catch_d
    move-exception v0

    goto/16 :goto_c

    :catch_e
    move-exception v0

    :goto_1c
    move-object/from16 v37, v11

    goto/16 :goto_9

    :catch_f
    move-exception v0

    :goto_1d
    move-object/from16 v37, v11

    goto/16 :goto_b

    :catch_10
    move-exception v0

    :goto_1e
    move-object/from16 v31, v9

    move-object/from16 v32, v10

    goto :goto_1c

    :catch_11
    move-exception v0

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    goto :goto_1d

    :catch_12
    move-exception v0

    :goto_1f
    move-object/from16 v26, v7

    move-object/from16 v27, v8

    goto :goto_1e

    :catch_13
    move-exception v0

    :goto_20
    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    move-object/from16 v37, v11

    :goto_21
    move-object/from16 v4, v16

    move-object/from16 v11, v18

    move-object/from16 v9, v21

    move-object/from16 v10, v23

    move-object/from16 v8, v25

    goto/16 :goto_d

    :cond_19
    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    move-object/from16 v37, v11

    move-object/from16 v4, v16

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missing Jpeg components: jpeg/thumb/exit/makenote/app6, component count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " which should be >= 5"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    const-string v2, "missing Jpeg components"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_14
    move-exception v0

    move-object/from16 v25, v6

    goto :goto_1f

    :catch_15
    move-exception v0

    move-object/from16 v25, v6

    goto :goto_20

    :catch_16
    move-exception v0

    :goto_22
    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    move-object/from16 v37, v11

    move-object/from16 v21, v12

    goto/16 :goto_9

    :catch_17
    move-exception v0

    :goto_23
    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    move-object/from16 v37, v11

    move-object/from16 v21, v12

    goto :goto_21

    :cond_1a
    move-object/from16 v23, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    move-object/from16 v37, v11

    move-object/from16 v21, v12

    move-object/from16 v4, v16

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/16 v17, 0x0

    throw v17
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c

    :catch_18
    move-exception v0

    :goto_24
    move-object/from16 v23, v5

    goto :goto_22

    :catch_19
    move-exception v0

    :goto_25
    move-object/from16 v23, v5

    goto :goto_23

    :catch_1a
    move-exception v0

    :goto_26
    move-object/from16 v23, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    move-object/from16 v37, v11

    move-object/from16 v21, v12

    goto/16 :goto_9

    :catch_1b
    move-exception v0

    :goto_27
    move-object/from16 v23, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    move-object/from16 v37, v11

    move-object/from16 v21, v12

    goto/16 :goto_b

    :catch_1c
    move-exception v0

    move-object/from16 v18, v4

    goto :goto_24

    :catch_1d
    move-exception v0

    move-object/from16 v18, v4

    goto :goto_25

    :catch_1e
    move-exception v0

    move-object/from16 v18, v4

    goto :goto_26

    :catch_1f
    move-exception v0

    move-object/from16 v18, v4

    goto :goto_27

    :goto_28
    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/16 v2, 0x16

    invoke-direct {v0, v2}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(I)V

    move-object/from16 v3, v32

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object/from16 v5, v31

    invoke-virtual {v0, v5, v4}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v27

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v6}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V

    move-object/from16 v7, v26

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v7}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putLong(JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putAll(Landroid/os/Bundle;)V

    move-object/from16 v8, v25

    const/4 v12, 0x1

    invoke-virtual {v0, v12, v8}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V

    move-object/from16 v9, v21

    invoke-virtual {v0, v9}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/common/TaskId;

    move-object/from16 v10, v23

    invoke-virtual {v10, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    if-eqz v1, :cond_1b

    invoke-virtual {v0, v9}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/TaskId;

    move-object/from16 v11, v18

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x6

    invoke-static {v1, v0, v2}, Lcom/motorola/camera/service/BgJobService;->notifyJobStatus(Landroid/os/Messenger;Lcom/motorola/camera/background/common/TaskId;I)V

    goto :goto_2a

    :goto_29
    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/16 v2, 0x16

    invoke-direct {v0, v2}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v5, v4}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v6}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v7}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putLong(JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putAll(Landroid/os/Bundle;)V

    const/4 v12, 0x1

    invoke-virtual {v0, v12, v8}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V

    invoke-virtual {v0, v9}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {v10, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    if-eqz v1, :cond_1b

    invoke-virtual {v0, v9}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/TaskId;

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x6

    invoke-static {v1, v0, v2}, Lcom/motorola/camera/service/BgJobService;->notifyJobStatus(Landroid/os/Messenger;Lcom/motorola/camera/background/common/TaskId;I)V

    :cond_1b
    :goto_2a
    return-void
.end method

.method public final saveNormalProcessImage(Landroid/os/Bundle;Landroid/content/Context;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "getTaskID(...)"

    iget-object v5, v0, Lcom/motorola/camera/service/BgJobService;->responseMap:Ljava/util/LinkedHashMap;

    const-string v6, "ERROR_CASE"

    const-string v7, "GLOBAL_UUID"

    const-string v8, "DATE_TYPE"

    const-string v9, "FILE_NAME"

    const-string v10, "URI"

    const-string v11, "Failed to save Image "

    const-string/jumbo v12, "task_id"

    const-string v13, "context"

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/motorola/camera/service/BgJobService;->isValidData(Landroid/os/Bundle;)Z

    move-result v13

    const-string v14, "BgJobService"

    if-nez v13, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Duplicate job. Job will be ignored. Data received:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p1}, Lcom/motorola/camera/service/BgJobService;->cancelSaveImage(Landroid/os/Bundle;)V

    return-void

    :cond_0
    move-object/from16 v16, v14

    const/4 v14, 0x0

    const/16 v17, 0x1

    :try_start_0
    const-class v13, Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {v13}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    invoke-virtual {v1, v15}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/motorola/camera/background/common/TaskId;

    if-eqz v13, :cond_1

    iget-object v0, v0, Lcom/motorola/camera/service/BgJobService;->subTaskCount:Ljava/util/LinkedHashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_3

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    iget-object v0, v3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    move-object v0, v3

    goto :goto_1

    :cond_2
    invoke-static {v2, v1}, Lcom/motorola/camera/service/BgJobService;->retrieveCaptureData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    move-result-object v0

    :goto_1
    iget-object v2, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    const-string v3, "null cannot be cast to non-null type com.motorola.camera.fsm.camera.record.ImageCaptureRecord"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    sget-object v3, Lcom/motorola/camera/mcf/Mcf$InstanceType;->NORMAL:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-static {v1, v0}, Lcom/motorola/camera/service/BgJobService;->addMetadataToJpeg(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-static {v2, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/16 v2, 0x16

    invoke-direct {v0, v2}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(I)V

    invoke-virtual {v0, v10, v14}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v9, v14}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v8}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v7}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putLong(JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putAll(Landroid/os/Bundle;)V

    move/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V

    invoke-virtual {v0, v12}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {v5, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v12}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/TaskId;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x6

    invoke-static {v1, v0, v2}, Lcom/motorola/camera/service/BgJobService;->notifyJobStatus(Landroid/os/Messenger;Lcom/motorola/camera/background/common/TaskId;I)V

    goto :goto_4

    :goto_3
    invoke-static {v2, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/16 v2, 0x16

    invoke-direct {v0, v2}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(I)V

    invoke-virtual {v0, v10, v14}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v9, v14}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v8}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v7}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putLong(JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putAll(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v6}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V

    invoke-virtual {v0, v12}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {v5, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v12}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/TaskId;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x6

    invoke-static {v1, v0, v2}, Lcom/motorola/camera/service/BgJobService;->notifyJobStatus(Landroid/os/Messenger;Lcom/motorola/camera/background/common/TaskId;I)V

    :cond_3
    :goto_4
    return-void
.end method
