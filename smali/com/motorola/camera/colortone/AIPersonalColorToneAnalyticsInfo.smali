.class public Lcom/motorola/camera/colortone/AIPersonalColorToneAnalyticsInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final AI_COLOR_TONE_MODULE_LIST_SIZE:I = 0x3

.field public static final RESULT_KEY:Ljava/lang/String; = "jsonResult"


# instance fields
.field private moduleList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "module"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/colortone/AIPersonalColorToneModule;",
            ">;"
        }
    .end annotation
.end field

.field private moduleVersion:I

.field private trainingTimeType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getModuleList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/motorola/camera/colortone/AIPersonalColorToneModule;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneAnalyticsInfo;->moduleList:Ljava/util/List;

    return-object p0
.end method

.method public getModuleVersion()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneAnalyticsInfo;->moduleVersion:I

    return p0
.end method

.method public getTrainingTimeType()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneAnalyticsInfo;->trainingTimeType:I

    return p0
.end method

.method public isModuleListValid()Z
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/colortone/AIPersonalColorToneAnalyticsInfo;->getModuleList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setModuleList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/motorola/camera/colortone/AIPersonalColorToneModule;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneAnalyticsInfo;->moduleList:Ljava/util/List;

    return-void
.end method

.method public setModuleVersion(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneAnalyticsInfo;->moduleVersion:I

    return-void
.end method

.method public setTrainingTimeType(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneAnalyticsInfo;->trainingTimeType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moduleVersion:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneAnalyticsInfo;->moduleVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " trainingTimeType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneAnalyticsInfo;->trainingTimeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneAnalyticsInfo;->moduleList:Ljava/util/List;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
