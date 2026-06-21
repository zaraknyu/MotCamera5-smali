.class public final Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final cameraId:Ljava/lang/String;

.field public final isHighRes:Z

.field public final physicalCameraId:Ljava/lang/String;

.field public final surfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V
    .locals 2

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V
    .locals 1

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Z)V
    .locals 1

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "surfaceType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->cameraId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->physicalCameraId:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->surfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    .line 5
    iput-boolean p4, p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->isHighRes:Z

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->surfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->physicalCameraId:Ljava/lang/String;

    iget-object v2, p1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->cameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->cameraId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->surfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-virtual {v2, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->physicalCameraId:Ljava/lang/String;

    if-nez v0, :cond_4

    if-nez v1, :cond_a

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_7

    goto :goto_0

    :cond_7
    iget-boolean p1, p1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->isHighRes:Z

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->isHighRes:Z

    if-ne p0, p1, :cond_8

    goto :goto_2

    :cond_8
    if-eqz p0, :cond_9

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_9
    if-eqz p1, :cond_b

    :cond_a
    :goto_1
    const/4 p0, -0x1

    return p0

    :cond_b
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->cameraId:Ljava/lang/String;

    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->cameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->physicalCameraId:Ljava/lang/String;

    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->physicalCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->surfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->surfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->isHighRes:Z

    iget-boolean p1, p1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->isHighRes:Z

    if-eq p0, p1, :cond_5

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->cameraId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->physicalCameraId:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->surfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->isHighRes:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", physicalCameraId="

    const-string v1, ", surfaceType="

    const-string v2, "SurfaceKey(cameraId="

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->cameraId:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->physicalCameraId:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->surfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isHighRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->isHighRes:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
