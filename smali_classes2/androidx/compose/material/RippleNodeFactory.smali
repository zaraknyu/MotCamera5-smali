.class public final Landroidx/compose/material/RippleNodeFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/IndicationNodeFactory;


# instance fields
.field public final bounded:Z

.field public final color:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Landroidx/compose/material/RippleNodeFactory;->bounded:Z

    iput-wide p1, p0, Landroidx/compose/material/RippleNodeFactory;->color:J

    return-void
.end method


# virtual methods
.method public final create(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;)Landroidx/compose/ui/node/DelegatableNode;
    .locals 2

    new-instance v0, La/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, La/f;-><init>(ILjava/lang/Object;)V

    new-instance v1, Landroidx/compose/material/DelegatingThemeAwareRippleNode;

    iget-boolean p0, p0, Landroidx/compose/material/RippleNodeFactory;->bounded:Z

    invoke-direct {v1, p1, p0, v0}, Landroidx/compose/material/DelegatingThemeAwareRippleNode;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZLandroidx/compose/ui/graphics/ColorProducer;)V

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroidx/compose/material/RippleNodeFactory;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/compose/material/RippleNodeFactory;

    iget-boolean v0, p1, Landroidx/compose/material/RippleNodeFactory;->bounded:Z

    iget-boolean v1, p0, Landroidx/compose/material/RippleNodeFactory;->bounded:Z

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {v0, v0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    iget-wide v0, p0, Landroidx/compose/material/RippleNodeFactory;->color:J

    iget-wide p0, p1, Landroidx/compose/material/RippleNodeFactory;->color:J

    invoke-static {v0, v1, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/material/RippleNodeFactory;->bounded:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3c1

    sget v1, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    iget-wide v1, p0, Landroidx/compose/material/RippleNodeFactory;->color:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
