.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Long;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Long;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda14;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda14;->f$0:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda14;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_O:Lcom/motorola/camera/CameraKpi$KPI;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda14;->f$0:Ljava/lang/Long;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;)J

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->HAL_SET_REPEATING_TO_FIRST_FRAME:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;)J

    iget-object v1, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_COLD_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/CameraKpi;->endKpiLogs(Ljava/lang/Long;)V

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->turnOnSmileCaptureDelay()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->turnOnGestureCaptureDelay()V

    return-void

    :pswitch_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_O:Lcom/motorola/camera/CameraKpi$KPI;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda14;->f$0:Ljava/lang/Long;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;)J

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->HAL_SET_REPEATING_TO_FIRST_FRAME:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;)J

    iget-object v1, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_COLD_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Lcom/motorola/camera/CameraKpi;->endKpiLogs(Ljava/lang/Long;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
