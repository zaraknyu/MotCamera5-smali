.class public Lcom/motorola/camera/colortone/AIPersonalColorToneValues;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private color:F

.field private tone:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneValues;->color:F

    iput p2, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneValues;->tone:F

    return-void
.end method


# virtual methods
.method public getColor()F
    .locals 0

    iget p0, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneValues;->color:F

    return p0
.end method

.method public getTone()F
    .locals 0

    iget p0, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneValues;->tone:F

    return p0
.end method

.method public setColor(F)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneValues;->color:F

    return-void
.end method

.method public setTone(F)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneValues;->tone:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[color:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneValues;->color:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",tone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneValues;->tone:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
