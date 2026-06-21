.class public final Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/layout/BoxScope;


# instance fields
.field public final constraints:J

.field public final density:Landroidx/compose/ui/unit/Density;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->density:Landroidx/compose/ui/unit/Density;

    iput-wide p2, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->constraints:J

    return-void
.end method


# virtual methods
.method public final align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;
    .locals 0

    new-instance p0, Landroidx/compose/foundation/layout/BoxChildDataElement;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroidx/compose/foundation/layout/BoxChildDataElement;-><init>(Landroidx/compose/ui/BiasAlignment;Z)V

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;

    iget-object v0, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->density:Landroidx/compose/ui/unit/Density;

    iget-object v1, p1, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->density:Landroidx/compose/ui/unit/Density;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->constraints:J

    iget-wide p0, p1, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->constraints:J

    invoke-static {v0, v1, p0, p1}, Landroidx/compose/ui/unit/Constraints;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_3

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->density:Landroidx/compose/ui/unit/Density;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->constraints:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BoxWithConstraintsScopeImpl(density="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->density:Landroidx/compose/ui/unit/Density;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", constraints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->constraints:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
