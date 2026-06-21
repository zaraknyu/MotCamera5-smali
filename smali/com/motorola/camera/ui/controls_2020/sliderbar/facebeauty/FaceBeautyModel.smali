.class public final Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final canParse:Z

.field public dataMax:I

.field public dataMin:I

.field public default:I

.field public final displayMax:I

.field public final displayMin:I

.field public final image:I

.field public final key:Ljava/lang/String;

.field public state:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

.field public final text:I

.field public value:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;IIIIIIIZ)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->state:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->value:I

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->dataMin:I

    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->dataMax:I

    iput p6, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->displayMin:I

    iput p7, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->displayMax:I

    iput p8, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->image:I

    iput p9, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->text:I

    iput-boolean p10, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->canParse:Z

    if-eqz p10, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->toDisplay()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->default:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->key:Ljava/lang/String;

    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->key:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->state:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->state:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->value:I

    iget v1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->value:I

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->dataMin:I

    iget v1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->dataMin:I

    if-eq v0, v1, :cond_5

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->dataMax:I

    iget v1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->dataMax:I

    if-eq v0, v1, :cond_6

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->displayMin:I

    iget v1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->displayMin:I

    if-eq v0, v1, :cond_7

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->displayMax:I

    iget v1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->displayMax:I

    if-eq v0, v1, :cond_8

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->image:I

    iget v1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->image:I

    if-eq v0, v1, :cond_9

    goto :goto_0

    :cond_9
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->text:I

    iget v1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->text:I

    if-eq v0, v1, :cond_a

    goto :goto_0

    :cond_a
    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->canParse:Z

    iget-boolean p1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->canParse:Z

    if-eq p0, p1, :cond_b

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final getUiValue(I)I
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->displayMin:I

    int-to-float v1, v0

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->displayMax:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->dataMin:I

    sub-int/2addr p1, v2

    int-to-float p1, p1

    mul-float/2addr v0, p1

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->dataMax:I

    sub-int/2addr p0, v2

    int-to-float p0, p0

    div-float/2addr v0, p0

    add-float/2addr v0, v1

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->state:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->value:I

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->dataMin:I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->dataMax:I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->displayMin:I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->displayMax:I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->image:I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->text:I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->canParse:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toDisplay()I
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->displayMax:I

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->displayMin:I

    sub-int v2, v0, v1

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-float v2, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->value:I

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->dataMin:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->dataMax:I

    sub-int/2addr p0, v3

    int-to-float p0, p0

    div-float/2addr v0, p0

    add-float/2addr v0, v2

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->state:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->value:I

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->dataMin:I

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->dataMax:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "FaceBeautyModel(key="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", value="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", dataMin="

    const-string v5, ", dataMax="

    invoke-static {v4, v1, v0, v2, v5}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v0, ", displayMin="

    const-string v1, ", displayMax="

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->displayMin:I

    invoke-static {v4, v3, v0, v2, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v0, ", image="

    const-string v1, ", text="

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->displayMax:I

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->image:I

    invoke-static {v4, v2, v0, v3, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->text:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", canParse="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->canParse:Z

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
