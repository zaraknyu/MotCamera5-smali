.class public final synthetic Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget p0, p0, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-wide/32 v0, 0xf4240

    div-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-static {p1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->$r8$lambda$vuzQHDvIcs4OmpIoQOU6uFw-XQU(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-static {p1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->$r8$lambda$s_BkOV6IwC3mFeKMpDJ5NS46vwM(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    return-object p0

    :pswitch_5
    check-cast p1, Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    return-object p0

    :pswitch_6
    check-cast p1, Lcom/motorola/camera/JsonConfig$ConcurrentJobsBySceneAdvanced;

    iget-object p0, p1, Lcom/motorola/camera/JsonConfig$ConcurrentJobsBySceneAdvanced;->maxConcurrentJobs:[I

    return-object p0

    :pswitch_7
    check-cast p1, Lcom/motorola/camera/CameraKpi$KPI;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    nop

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
