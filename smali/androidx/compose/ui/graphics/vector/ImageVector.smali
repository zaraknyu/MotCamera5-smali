.class public final Landroidx/compose/ui/graphics/vector/ImageVector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static imageVectorCount:I

.field public static final lock:Lokio/Timeout;


# instance fields
.field public final autoMirror:Z

.field public final defaultHeight:F

.field public final defaultWidth:F

.field public final genId:I

.field public final name:Ljava/lang/String;

.field public final root:Landroidx/compose/ui/graphics/vector/VectorGroup;

.field public final tintBlendMode:I

.field public final tintColor:J

.field public final viewportHeight:F

.field public final viewportWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokio/Timeout;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lokio/Timeout;-><init>(I)V

    sput-object v0, Landroidx/compose/ui/graphics/vector/ImageVector;->lock:Lokio/Timeout;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFFFLandroidx/compose/ui/graphics/vector/VectorGroup;JIZ)V
    .locals 3

    sget-object v0, Landroidx/compose/ui/graphics/vector/ImageVector;->lock:Lokio/Timeout;

    monitor-enter v0

    :try_start_0
    sget v1, Landroidx/compose/ui/graphics/vector/ImageVector;->imageVectorCount:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Landroidx/compose/ui/graphics/vector/ImageVector;->imageVectorCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->name:Ljava/lang/String;

    iput p2, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->defaultWidth:F

    iput p3, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->defaultHeight:F

    iput p4, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->viewportWidth:F

    iput p5, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->viewportHeight:F

    iput-object p6, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->root:Landroidx/compose/ui/graphics/vector/VectorGroup;

    iput-wide p7, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->tintColor:J

    iput p9, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->tintBlendMode:I

    iput-boolean p10, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->autoMirror:Z

    iput v1, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->genId:I

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroidx/compose/ui/graphics/vector/ImageVector;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/compose/ui/graphics/vector/ImageVector;

    iget-object v0, p1, Landroidx/compose/ui/graphics/vector/ImageVector;->name:Ljava/lang/String;

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->name:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->defaultWidth:F

    iget v1, p1, Landroidx/compose/ui/graphics/vector/ImageVector;->defaultWidth:F

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->defaultHeight:F

    iget v1, p1, Landroidx/compose/ui/graphics/vector/ImageVector;->defaultHeight:F

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->viewportWidth:F

    iget v1, p1, Landroidx/compose/ui/graphics/vector/ImageVector;->viewportWidth:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_8

    iget v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->viewportHeight:F

    iget v1, p1, Landroidx/compose/ui/graphics/vector/ImageVector;->viewportHeight:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_8

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->root:Landroidx/compose/ui/graphics/vector/VectorGroup;

    iget-object v1, p1, Landroidx/compose/ui/graphics/vector/ImageVector;->root:Landroidx/compose/ui/graphics/vector/VectorGroup;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/VectorGroup;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    iget-wide v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->tintColor:J

    iget-wide v2, p1, Landroidx/compose/ui/graphics/vector/ImageVector;->tintColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    iget v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->tintBlendMode:I

    iget v1, p1, Landroidx/compose/ui/graphics/vector/ImageVector;->tintBlendMode:I

    if-ne v0, v1, :cond_8

    iget-boolean p0, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->autoMirror:Z

    iget-boolean p1, p1, Landroidx/compose/ui/graphics/vector/ImageVector;->autoMirror:Z

    if-eq p0, p1, :cond_7

    goto :goto_1

    :cond_7
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_8
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->defaultWidth:F

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IFI)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->defaultHeight:F

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IFI)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->viewportWidth:F

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IFI)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->viewportHeight:F

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IFI)I

    move-result v0

    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->root:Landroidx/compose/ui/graphics/vector/VectorGroup;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/VectorGroup;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    sget v0, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    iget-wide v3, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->tintColor:J

    invoke-static {v3, v4, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->tintBlendMode:I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean p0, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->autoMirror:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
