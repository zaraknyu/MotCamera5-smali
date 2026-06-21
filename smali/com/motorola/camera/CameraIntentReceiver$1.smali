.class public final Lcom/motorola/camera/CameraIntentReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 12

    iget v0, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x6

    invoke-static {v0}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    aget v0, v0, v1

    invoke-static {v0}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    const/4 p1, 0x0

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzr;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;

    const/4 v0, 0x2

    invoke-direct {v5, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;I)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v6, 0x1f4

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct/range {v4 .. v11}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, v4, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v4, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    invoke-virtual {p1, v4, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zzr;

    iget-object v0, v0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mTouchArea:Landroid/graphics/PointF;

    if-eqz v2, :cond_c

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mDragging:Z

    if-nez v2, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "LOCATION"

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mTouchArea:Landroid/graphics/PointF;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v4, "ENABLE"

    invoke-virtual {v2, v4, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v4, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ROI_DRAG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v4, v5, v2, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzr;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v4, 0x1388

    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzr;

    invoke-static {p0, v3}, Lcom/google/android/gms/tasks/zzr;->-$$Nest$manimateFocus(Lcom/google/android/gms/tasks/zzr;Z)V

    goto/16 :goto_2

    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzr;

    invoke-static {p0, p1}, Lcom/google/android/gms/tasks/zzr;->-$$Nest$manimateFocus(Lcom/google/android/gms/tasks/zzr;Z)V

    goto/16 :goto_2

    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzr;

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mCafTimeout:Z

    iput-boolean p1, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    invoke-static {p0, p1}, Lcom/google/android/gms/tasks/zzr;->-$$Nest$manimateFocus(Lcom/google/android/gms/tasks/zzr;Z)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zzr;

    iget-object v0, v0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zzr;

    iget-object v0, v0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mFocusScan:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object p1, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/zzr;->cancel()V

    iget-object p0, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzr;

    iget-object p1, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiActive:Z

    if-nez v5, :cond_b

    iget-boolean v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLocked:Z

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mFocusScan:Z

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    if-eqz p1, :cond_8

    invoke-static {p0, v3}, Lcom/google/android/gms/tasks/zzr;->-$$Nest$manimateFocus(Lcom/google/android/gms/tasks/zzr;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_8
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    const-wide/16 v5, 0xfa

    invoke-virtual {p0, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_9
    iget-boolean p1, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzr;->reset()V

    goto :goto_0

    :cond_a
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    monitor-exit v4

    goto :goto_2

    :cond_b
    :goto_1
    monitor-exit v4

    :cond_c
    :goto_2
    return v3

    :goto_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    iget-object p0, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/tinder/StateMachine;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_e

    iget-object p0, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_1
    throw p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_e
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/CameraIntentReceiver;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/motorola/camera/CameraIntentReceiver;->mHandler:Landroid/os/Handler;

    const-string/jumbo v1, "wiggle_gesture"

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.systemui.camera_launch_source"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {p1}, Lcom/motorola/camera/Util;->getIntentSource(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_f
    const-string v4, "motorola.intent.extra.CALLER"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_4
    sget-boolean v5, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v5, :cond_10

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/CameraKpi$KPI;->CAMERA_RECEIVER:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_10
    invoke-static {}, Lcom/motorola/camera/utility/ColorUtil;->isKeyguardLocked()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_11

    goto :goto_5

    :cond_11
    const-string v5, "device_policy"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v5

    const/4 v7, 0x2

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_12

    goto :goto_7

    :cond_12
    :goto_5
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->QUICK_DRAW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    iget-object v7, v5, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v7, v5}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_13

    goto :goto_7

    :cond_13
    iget v5, v2, Lcom/motorola/camera/CameraApp;->mResumeRefCount:I

    if-lez v5, :cond_15

    new-instance v0, Landroid/content/Intent;

    const-string v2, "motorola.camera.intent.action.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->MEDIA_CONTROL:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_14
    invoke-virtual {p0, p1}, Lcom/motorola/camera/CameraIntentReceiver;->onActivityRunning(Landroid/content/Intent;)V

    :goto_6
    move p1, v6

    goto :goto_8

    :cond_15
    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->isCameraActivityStarted()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/motorola/camera/PermissionsManager;->mWaitingUserAction:Z

    if-eqz v1, :cond_16

    :goto_7
    goto :goto_6

    :cond_16
    invoke-virtual {v0, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 p1, 0x0

    goto :goto_8

    :cond_17
    invoke-virtual {p0, v3, p1}, Lcom/motorola/camera/CameraIntentReceiver;->onActivityStopped(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_6

    :goto_8
    xor-int/2addr p1, v6

    iput-boolean p1, p0, Lcom/motorola/camera/CameraIntentReceiver;->mIntentEnqueued:Z

    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
