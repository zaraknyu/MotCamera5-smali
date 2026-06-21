.class public final synthetic Lcom/motorola/camera/adobe_scan/AdobeSdkManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$$ExternalSyntheticLambda2;->f$0:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lh/F;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lh/F;->getPageIndex()I

    iget-boolean p0, p0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$$ExternalSyntheticLambda2;->f$0:Z

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    sget-wide v2, La/l;->retakeTime:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    sget-wide v2, La/l;->retakeTime:J

    sub-long/2addr p0, v2

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->ADOBE_SCAN_RETAKE_TO_CAPTURE_PREVIEW_TIME_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Lcom/motorola/camera/CameraKpi;->commitKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;)V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    sget-wide p0, La/l;->addPageTime:J

    cmp-long p0, p0, v0

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    sget-wide v2, La/l;->addPageTime:J

    sub-long/2addr p0, v2

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->ADOBE_SCAN_ADD_PAGE_TO_CAPTURE_PREVIEW_TIME_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Lcom/motorola/camera/CameraKpi;->commitKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;)V

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    sget-wide v2, La/l;->loadCapturePreviewTime:J

    sub-long/2addr p0, v2

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->ADOBE_SCAN_LOAD_CAPTURE_PREVIEW_TIME_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Lcom/motorola/camera/CameraKpi;->commitKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;)V

    sput-wide v0, La/l;->retakeTime:J

    sput-wide v0, La/l;->addPageTime:J

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
