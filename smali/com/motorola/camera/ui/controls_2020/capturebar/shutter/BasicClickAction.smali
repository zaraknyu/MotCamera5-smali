.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(JJJILcom/motorola/camera/EventListener;)V
    .locals 1

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "listener"

    invoke-static {p8, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoFamilyMode()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureVideoMode()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p8}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->getCaptureEvent(JJJILcom/motorola/camera/EventListener;)Lcom/motorola/camera/fsm/camera/Trigger;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p0, Landroid/os/Bundle;

    const/4 p5, 0x3

    invoke-direct {p0, p5}, Landroid/os/Bundle;-><init>(I)V

    const-string p5, "ON_DOWN"

    invoke-virtual {p0, p5, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "ON_UP"

    invoke-virtual {p0, p1, p3, p4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "CAPTURE_TRIGGER"

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p0, p3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    move-object p0, p1

    :goto_1
    invoke-interface {p8, p0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :pswitch_0
    const-string p0, "listener"

    invoke-static {p8, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p8, p0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :pswitch_1
    const-string p0, "listener"

    invoke-static {p8, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p8, p0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :pswitch_2
    const-string p0, "listener"

    invoke-static {p8, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-wide p4, p3

    move-wide p2, p1

    const/4 p1, 0x1

    move-object p6, p8

    invoke-static/range {p1 .. p6}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->getCaptureLongPressEvent(ZJJLcom/motorola/camera/EventListener;)Lcom/motorola/camera/fsm/camera/Trigger;

    move-result-object p0

    invoke-interface {p8, p0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :pswitch_3
    const-string p0, "listener"

    invoke-static {p8, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_UP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p8, p0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :pswitch_4
    const-string p0, "listener"

    invoke-static {p8, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    const/4 p3, 0x2

    invoke-direct {p0, p3}, Landroid/os/Bundle;-><init>(I)V

    const-string p3, "ON_DOWN"

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string p2, "getValue(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const-string p2, "TIMER"

    invoke-virtual {p0, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_DOWN:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p0, p3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {p8, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :pswitch_5
    const-string p0, "listener"

    invoke-static {p8, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "ON_DOWN"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "ON_UP"

    invoke-virtual {p0, v0, p3, p4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimerEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/utility/ColorUtil;->onCaptureStarted()V

    :cond_2
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_TIMELINE:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Shutter Up"

    invoke-static {v0}, Lcom/motorola/camera/CameraKpi;->logKeyProgress(Ljava/lang/String;)V

    :cond_3
    invoke-static/range {p1 .. p8}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->getCaptureEvent(JJJILcom/motorola/camera/EventListener;)Lcom/motorola/camera/fsm/camera/Trigger;

    move-result-object p1

    invoke-interface {p8, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER_CLICKED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    :pswitch_6
    const-string p0, "listener"

    invoke-static {p8, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-wide p4, p3

    move-wide p2, p1

    const/4 p1, 0x0

    move-object p6, p8

    invoke-static/range {p1 .. p6}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->getCaptureLongPressEvent(ZJJLcom/motorola/camera/EventListener;)Lcom/motorola/camera/fsm/camera/Trigger;

    move-result-object p0

    invoke-interface {p8, p0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :pswitch_7
    const-string p0, "listener"

    invoke-static {p8, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p8}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->getCaptureEvent(JJJILcom/motorola/camera/EventListener;)Lcom/motorola/camera/fsm/camera/Trigger;

    move-result-object p0

    invoke-interface {p8, p0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
