.class public final Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final max:I

.field public final min:I

.field public final value:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;->value:I

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;->min:I

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;->max:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;->value:I

    iget v3, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;->value:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;->min:I

    iget v3, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;->min:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;->max:I

    iget p1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;->max:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;->min:I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;->max:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", min="

    const-string v1, ", max="

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;->value:I

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;->min:I

    const-string v4, "FeatureData(value="

    invoke-static {v2, v3, v4, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;->max:I

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
