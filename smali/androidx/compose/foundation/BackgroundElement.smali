.class final Landroidx/compose/foundation/BackgroundElement;
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
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/foundation/BackgroundElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/BackgroundNode;",
        "foundation_release"
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

.field public final color:J

.field public final shape:Landroidx/compose/ui/graphics/Shape;


# direct methods
.method public constructor <init>(JLandroidx/compose/ui/graphics/Shape;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/foundation/BackgroundElement;->color:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/compose/foundation/BackgroundElement;->alpha:F

    iput-object p3, p0, Landroidx/compose/foundation/BackgroundElement;->shape:Landroidx/compose/ui/graphics/Shape;

    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 3

    new-instance v0, Landroidx/compose/foundation/BackgroundNode;

    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iget-wide v1, p0, Landroidx/compose/foundation/BackgroundElement;->color:J

    iput-wide v1, v0, Landroidx/compose/foundation/BackgroundNode;->color:J

    iget-object p0, p0, Landroidx/compose/foundation/BackgroundElement;->shape:Landroidx/compose/ui/graphics/Shape;

    iput-object p0, v0, Landroidx/compose/foundation/BackgroundNode;->shape:Landroidx/compose/ui/graphics/Shape;

    const-wide v1, 0x7fc000007fc00000L    # 2.247117487993712E307

    iput-wide v1, v0, Landroidx/compose/foundation/BackgroundNode;->lastSize:J

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroidx/compose/foundation/BackgroundElement;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/foundation/BackgroundElement;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Landroidx/compose/foundation/BackgroundElement;->color:J

    iget-wide v2, p1, Landroidx/compose/foundation/BackgroundElement;->color:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/compose/foundation/BackgroundElement;->alpha:F

    iget v1, p1, Landroidx/compose/foundation/BackgroundElement;->alpha:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    iget-object p0, p0, Landroidx/compose/foundation/BackgroundElement;->shape:Landroidx/compose/ui/graphics/Shape;

    iget-object p1, p1, Landroidx/compose/foundation/BackgroundElement;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    sget v0, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    iget-wide v0, p0, Landroidx/compose/foundation/BackgroundElement;->color:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3c1

    iget v1, p0, Landroidx/compose/foundation/BackgroundElement;->alpha:F

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IFI)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/foundation/BackgroundElement;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 2

    check-cast p1, Landroidx/compose/foundation/BackgroundNode;

    iget-wide v0, p0, Landroidx/compose/foundation/BackgroundElement;->color:J

    iput-wide v0, p1, Landroidx/compose/foundation/BackgroundNode;->color:J

    iget-object p0, p0, Landroidx/compose/foundation/BackgroundElement;->shape:Landroidx/compose/ui/graphics/Shape;

    iput-object p0, p1, Landroidx/compose/foundation/BackgroundNode;->shape:Landroidx/compose/ui/graphics/Shape;

    return-void
.end method
