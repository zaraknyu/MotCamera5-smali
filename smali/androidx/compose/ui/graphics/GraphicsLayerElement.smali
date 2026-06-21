.class final Landroidx/compose/ui/graphics/GraphicsLayerElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/GraphicsLayerElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final alpha:F

.field public final ambientShadowColor:J

.field public final clip:Z

.field public final rotationZ:F

.field public final scaleX:F

.field public final scaleY:F

.field public final shadowElevation:F

.field public final shape:Landroidx/compose/ui/graphics/Shape;

.field public final spotShadowColor:J

.field public final transformOrigin:J


# direct methods
.method public constructor <init>(FFFFFJLandroidx/compose/ui/graphics/Shape;ZJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->scaleX:F

    iput p2, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->scaleY:F

    iput p3, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->alpha:F

    iput p4, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->shadowElevation:F

    iput p5, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->rotationZ:F

    iput-wide p6, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->transformOrigin:J

    iput-object p8, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->shape:Landroidx/compose/ui/graphics/Shape;

    iput-boolean p9, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->clip:Z

    iput-wide p10, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->ambientShadowColor:J

    iput-wide p12, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->spotShadowColor:J

    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 3

    new-instance v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;

    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->scaleX:F

    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleX:F

    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->scaleY:F

    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleY:F

    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->alpha:F

    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->alpha:F

    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->shadowElevation:F

    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shadowElevation:F

    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->rotationZ:F

    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationZ:F

    const/high16 v1, 0x41000000    # 8.0f

    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->cameraDistance:F

    iget-wide v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->transformOrigin:J

    iput-wide v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->transformOrigin:J

    iget-object v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->shape:Landroidx/compose/ui/graphics/Shape;

    iput-object v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shape:Landroidx/compose/ui/graphics/Shape;

    iget-boolean v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->clip:Z

    iput-boolean v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->clip:Z

    iget-wide v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->ambientShadowColor:J

    iput-wide v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->ambientShadowColor:J

    iget-wide v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->spotShadowColor:J

    iput-wide v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->spotShadowColor:J

    new-instance p0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    const/16 v1, 0x18

    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;-><init>(ILjava/lang/Object;)V

    iput-object p0, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->layerBlock:Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;

    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->scaleX:F

    iget v2, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->scaleX:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_0

    :cond_2
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->scaleY:F

    iget v2, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->scaleY:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_0

    :cond_3
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->alpha:F

    iget v2, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->alpha:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x0

    invoke-static {v1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_0

    :cond_5
    invoke-static {v1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    iget v2, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->shadowElevation:F

    iget v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->shadowElevation:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    invoke-static {v1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_0

    :cond_8
    invoke-static {v1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_0

    :cond_9
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->rotationZ:F

    iget v2, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->rotationZ:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_0

    :cond_a
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_0

    :cond_b
    iget-wide v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->transformOrigin:J

    iget-wide v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->transformOrigin:J

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/TransformOrigin;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_0

    :cond_c
    iget-object v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->shape:Landroidx/compose/ui/graphics/Shape;

    iget-object v2, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_0

    :cond_d
    iget-boolean v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->clip:Z

    iget-boolean v2, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->clip:Z

    if-eq v1, v2, :cond_e

    goto :goto_0

    :cond_e
    iget-wide v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->ambientShadowColor:J

    iget-wide v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->ambientShadowColor:J

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_0

    :cond_f
    iget-wide v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->spotShadowColor:J

    iget-wide p0, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->spotShadowColor:J

    invoke-static {v1, v2, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_10

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_10
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->scaleX:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->scaleY:F

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IFI)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->alpha:F

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IFI)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IFI)I

    move-result v0

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IFI)I

    move-result v0

    iget v3, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->shadowElevation:F

    invoke-static {v0, v3, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IFI)I

    move-result v0

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IFI)I

    move-result v0

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IFI)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->rotationZ:F

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IFI)I

    move-result v0

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IFI)I

    move-result v0

    sget v2, Landroidx/compose/ui/graphics/TransformOrigin;->$r8$clinit:I

    iget-wide v2, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->transformOrigin:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-object v2, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->clip:Z

    const/16 v3, 0x3c1

    invoke-static {v2, v3, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    sget v2, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    iget-wide v2, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->ambientShadowColor:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->spotShadowColor:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GraphicsLayerElement(scaleX="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->scaleX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", scaleY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->scaleY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->alpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", translationX=0.0, translationY=0.0, shadowElevation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->shadowElevation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rotationX=0.0, rotationY=0.0, rotationZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->rotationZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", cameraDistance=8.0, transformOrigin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->transformOrigin:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/TransformOrigin;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->clip:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", renderEffect=null, ambientShadowColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->ambientShadowColor:J

    const-string v3, ", spotShadowColor="

    invoke-static {v1, v2, v0, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JLjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-wide v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->spotShadowColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", compositingStrategy=CompositingStrategy(value=0))"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 2

    check-cast p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;

    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->scaleX:F

    iput v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleX:F

    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->scaleY:F

    iput v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleY:F

    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->alpha:F

    iput v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->alpha:F

    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->shadowElevation:F

    iput v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shadowElevation:F

    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->rotationZ:F

    iput v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationZ:F

    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->cameraDistance:F

    iget-wide v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->transformOrigin:J

    iput-wide v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->transformOrigin:J

    iget-object v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->shape:Landroidx/compose/ui/graphics/Shape;

    iput-object v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shape:Landroidx/compose/ui/graphics/Shape;

    iget-boolean v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->clip:Z

    iput-boolean v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->clip:Z

    iget-wide v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->ambientShadowColor:J

    iput-wide v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->ambientShadowColor:J

    iget-wide v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->spotShadowColor:J

    iput-wide v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->spotShadowColor:J

    const/4 p0, 0x2

    invoke-static {p1, p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz p0, :cond_0

    iget-object p1, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->layerBlock:Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerBlock(Lkotlin/jvm/functions/Function1;Z)V

    :cond_0
    return-void
.end method
