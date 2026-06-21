.class public Lcom/motorola/camera/colortone/AIPersonalColorToneModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private colorToneValues:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "color-tone"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/colortone/AIPersonalColorToneValues;",
            ">;"
        }
    .end annotation
.end field

.field private moduleName:Ljava/lang/String;

.field private moduleType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/motorola/camera/colortone/AIPersonalColorToneValues;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneModule;->moduleType:I

    iput-object p2, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneModule;->moduleName:Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneModule;->colorToneValues:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getColorToneValues()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/motorola/camera/colortone/AIPersonalColorToneValues;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneModule;->colorToneValues:Ljava/util/List;

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneModule;->moduleName:Ljava/lang/String;

    return-object p0
.end method

.method public getModuleType()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneModule;->moduleType:I

    return p0
.end method

.method public setColorToneValues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/motorola/camera/colortone/AIPersonalColorToneValues;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneModule;->colorToneValues:Ljava/util/List;

    return-void
.end method

.method public setModuleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneModule;->moduleName:Ljava/lang/String;

    return-void
.end method

.method public setModuleType(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneModule;->moduleType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[moduleType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneModule;->moduleType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",moduleName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneModule;->moduleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneModule;->colorToneValues:Ljava/util/List;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v1, "]"

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
