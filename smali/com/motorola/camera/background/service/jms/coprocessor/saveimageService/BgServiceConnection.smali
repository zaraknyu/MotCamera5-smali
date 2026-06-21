.class public final Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final connectionContext:Landroid/content/Context;

.field public handlerThread:Landroid/os/HandlerThread;

.field public isBound:Z

.field public final listener:Lcom/motorola/camera/PermissionCallback;

.field public messenger:Landroid/os/Messenger;

.field public final responseHandler:Landroid/os/Handler;

.field public service:Landroid/os/Messenger;

.field public final serviceComponentInfo:Landroid/content/ComponentName;

.field public final serviceConnection:Lcom/google/android/play/core/appupdate/internal/zzw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/Handler;Lcom/motorola/camera/PermissionCallback;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "responseCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->connectionContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->responseHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->serviceComponentInfo:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->listener:Lcom/motorola/camera/PermissionCallback;

    new-instance p3, Lcom/google/android/play/core/appupdate/internal/zzw;

    const/4 p4, 0x2

    invoke-direct {p3, p4, p0}, Lcom/google/android/play/core/appupdate/internal/zzw;-><init>(ILjava/lang/Object;)V

    iput-object p3, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->serviceConnection:Lcom/google/android/play/core/appupdate/internal/zzw;

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p3, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method


# virtual methods
.method public final processJob(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->isBound:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->service:Landroid/os/Messenger;

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->messenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_0
    sget-object p1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "task_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/common/TaskId;

    if-eqz v1, :cond_2

    iget-wide v0, v1, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_2
    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda1;-><init>(ILcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;J)V

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->responseHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method
