.class public final synthetic Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-boolean p2, p0, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;->f$0:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-boolean p0, p0, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;->f$0:Z

    invoke-static {p0}, Lcom/motorola/camera/countdown/TimerCountdownManager;->stop(Z)V

    return-void

    :pswitch_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/motorola/camera/service/CameraForegroundService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.motorola.camera5.EXTRA_FINISH"

    iget-boolean p0, p0, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;->f$0:Z

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :pswitch_1
    sget-object v0, Lcom/motorola/camera/utility/ColdStartHelper;->INSTANCE:Lcom/motorola/camera/utility/ColdStartHelper;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    new-instance v3, Lcom/motorola/camera/device/callables/RecorderStopCallable;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v0, v1, v5}, Lcom/motorola/camera/device/callables/RecorderStopCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;I)V

    invoke-virtual {v2, v3}, Lcom/google/zxing/Result;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    invoke-static {}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getMainDisplayRealSize()Landroid/graphics/Point;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/utility/ColdStartHelper;->realSize:Landroid/graphics/Point;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/utility/ColdStartHelper;->characteristicsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-boolean p0, p0, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;->f$0:Z

    if-eqz p0, :cond_1

    iget-object p0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->initIfNot(Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
