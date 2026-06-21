.class public final synthetic Lcom/motorola/camera/Camera$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/Camera;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/Camera;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda3;->$r8$classId:I

    const/4 v1, 0x1

    const-string v2, "MotoCamera"

    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/Camera;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->finish()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mMemKillerExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda3;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/Camera;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void

    :pswitch_1
    sget-object v0, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setDisablePreviewScreenshots"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :pswitch_2
    sget-object v0, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_3
    sget-object v0, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v1, "check memory"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v1, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    sget-object v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->LOW_MEM_KILL_SIZE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    invoke-static {v3}, Lcom/motorola/camera/shared/DeviceProperties;->getInt(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lcom/motorola/camera/Camera;->mLowMemKillSize:J

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    const-wide/32 v6, 0xf4240

    if-nez v5, :cond_2

    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mLowMemKillSizeMb:[I

    invoke-static {v1}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v4

    aget v3, v3, v4

    int-to-long v3, v3

    :cond_2
    mul-long/2addr v3, v6

    sput-wide v3, Lcom/motorola/camera/Camera;->mLowMemKillSize:J

    sget-object v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->EXTRA_FREE_MEM_SIZE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    invoke-static {v3}, Lcom/motorola/camera/shared/DeviceProperties;->getInt(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;)I

    move-result v3

    sput v3, Lcom/motorola/camera/Camera;->mExtraFreeMemSizeKb:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mExtraFreeMemSizeMb:[I

    invoke-static {v1}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v1

    aget v1, v3, v1

    int-to-long v3, v1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    long-to-int v1, v3

    goto :goto_0

    :cond_3
    mul-int/lit16 v1, v3, 0x3e8

    :goto_0
    sput v1, Lcom/motorola/camera/Camera;->mExtraFreeMemSizeKb:I

    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "low memory kill size = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Lcom/motorola/camera/Camera;->mLowMemKillSize:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "extra free memory size (kb) = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/motorola/camera/Camera;->mExtraFreeMemSizeKb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->killApps()V

    return-void

    :pswitch_4
    sget-object v0, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/reflect/android/app/ActivityManagerNative;->getDefault()Lcom/motorola/camera/fsm/Fsm;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-boolean v3, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setExtraFreeKBytes: mExtraFreeMemSizeKb "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/motorola/camera/Camera;->mExtraFreeMemSizeKb:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mExtraFreeDurationMs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/motorola/camera/Camera;->mExtraFreeDurationMs:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget v2, Lcom/motorola/camera/Camera;->mExtraFreeMemSizeKb:I

    sget v3, Lcom/motorola/camera/Camera;->mExtraFreeDurationMs:I

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/fsm/Fsm;->setExtraFreeKBytes(II)V

    sget-boolean v0, Lcom/motorola/camera/Camera;->mSetExtraFreeRepeatedly:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0, v1, v1}, Lcom/motorola/camera/Camera;->setExtraFreeKBytesRepeatedly(ZZ)V

    :cond_7
    return-void

    :pswitch_5
    sget-object v0, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda2;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void

    :pswitch_6
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->killApps()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
