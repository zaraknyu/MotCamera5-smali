.class public final Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final angle:I

.field public final previewHeight:I

.field public final previewWidth:I

.field public final ptFocusX:I

.field public final ptFocusY:I

.field public final sharpRange:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->ptFocusX:I

    iput p2, p0, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->ptFocusY:I

    iput p3, p0, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->angle:I

    iput p4, p0, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->sharpRange:I

    iput p5, p0, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->previewWidth:I

    iput p6, p0, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->previewHeight:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;

    iget v1, p0, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->ptFocusX:I

    iget v3, p1, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->ptFocusX:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->ptFocusY:I

    iget v3, p1, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->ptFocusY:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->angle:I

    iget v3, p1, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->angle:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->sharpRange:I

    iget v3, p1, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->sharpRange:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->previewWidth:I

    iget v3, p1, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->previewWidth:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->previewHeight:I

    iget p1, p1, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->previewHeight:I

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->ptFocusX:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->ptFocusY:I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->angle:I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->sharpRange:I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->previewWidth:I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->previewHeight:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", ptFocusY="

    const-string v1, ", angle="

    iget v2, p0, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->ptFocusX:I

    iget v3, p0, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->ptFocusY:I

    const-string v4, "MiniatureBokehParams(ptFocusX="

    invoke-static {v2, v3, v4, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sharpRange="

    const-string v2, ", previewWidth="

    iget v3, p0, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->angle:I

    iget v4, p0, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->sharpRange:I

    invoke-static {v0, v3, v1, v4, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget v1, p0, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->previewWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", previewHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->previewHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
