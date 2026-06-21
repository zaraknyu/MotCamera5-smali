.class public final Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public crIntercept:F

.field public crSlope:F

.field public defaultCRTime:I

.field public maxPreviewExp:I

.field public mfnrProcessPerFrameTime:I

.field public mfnrProcessStaticTime:I


# direct methods
.method public static -$$Nest$mparseJson(Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;Lorg/json/JSONArray;)V
    .locals 6

    const-string v0, " requires: 6"

    const-string v1, "Invalid number of coefficients: "

    const-string v2, "IqConfigManager"

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->maxPreviewExp:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->defaultCRTime:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->crSlope:F

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->crIntercept:F

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->mfnrProcessStaticTime:I

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->mfnrProcessPerFrameTime:I

    return-void

    :cond_0
    sget-object p0, Lcom/motorola/camera/IqConfigManager;->mIqTuningLuxStdStore:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object p0, Lcom/motorola/camera/IqConfigManager;->mIqTuningLuxStdStore:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    const-string p0, "coefficients field has unknown value"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimeEstimateCoeff{ maxPreviewExp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->maxPreviewExp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", defaultCRTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->defaultCRTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", crSlope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->crSlope:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", crIntercept="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->crIntercept:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mfnrProcessStaticTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->mfnrProcessStaticTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mfnrProcessPerFrameTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->mfnrProcessPerFrameTime:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
