.class public final Lcom/motorola/camera/colortone/AIPersonalColorToneCustomizeModuleInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mHasModuleInTraining:Z

.field public mHasTrainingCompleteModule:Z

.field public mModuleVersion:I

.field public mTrainingProgress:I

.field public final mTrainingTimeType:I


# direct methods
.method public constructor <init>(IIIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p4, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneCustomizeModuleInfo;->mHasTrainingCompleteModule:Z

    iput p1, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneCustomizeModuleInfo;->mModuleVersion:I

    iput-boolean p5, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneCustomizeModuleInfo;->mHasModuleInTraining:Z

    iput p2, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneCustomizeModuleInfo;->mTrainingTimeType:I

    iput p3, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneCustomizeModuleInfo;->mTrainingProgress:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mHasTrainingCompleteModule:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneCustomizeModuleInfo;->mHasTrainingCompleteModule:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mModuleVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneCustomizeModuleInfo;->mModuleVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mHasModuleInTraining:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneCustomizeModuleInfo;->mHasModuleInTraining:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mTrainingTimeType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneCustomizeModuleInfo;->mTrainingTimeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mTrainingProgress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneCustomizeModuleInfo;->mTrainingProgress:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
