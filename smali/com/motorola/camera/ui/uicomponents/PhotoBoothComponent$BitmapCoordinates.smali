.class public final Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final height:I

.field public final width:I

.field public final x:I

.field public final y:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;->x:I

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;->y:I

    iput p3, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;->width:I

    iput p4, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;->height:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;

    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;->x:I

    iget v3, p1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;->x:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;->y:I

    iget v3, p1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;->y:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;->width:I

    iget v3, p1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;->width:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;->height:I

    iget p1, p1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;->height:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;->y:I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;->width:I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", y="

    const-string v1, ", width="

    iget v2, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;->x:I

    iget v3, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;->y:I

    const-string v4, "BitmapCoordinates(x="

    invoke-static {v2, v3, v4, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
