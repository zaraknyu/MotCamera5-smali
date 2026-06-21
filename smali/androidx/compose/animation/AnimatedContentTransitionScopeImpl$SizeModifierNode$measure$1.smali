.class public final Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $measuredSize:J

.field public final synthetic $placeable:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic this$0:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;Landroidx/compose/ui/layout/Placeable;J)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$1;->this$0:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;

    iput-object p2, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iput-wide p3, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$1;->$measuredSize:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$1;->this$0:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;

    iget-object v0, v0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->scope:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iget v1, v0, Landroidx/compose/ui/layout/Placeable;->width:I

    iget v2, v0, Landroidx/compose/ui/layout/Placeable;->height:I

    int-to-long v3, v1

    const/16 v1, 0x20

    shl-long/2addr v3, v1

    int-to-long v5, v2

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    or-long v2, v3, v5

    sget-object v4, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iget-wide v4, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$1;->$measuredSize:J

    shr-long v9, v4, v1

    long-to-int p0, v9

    shr-long v9, v2, v1

    long-to-int v6, v9

    sub-int/2addr p0, v6

    int-to-float p0, p0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr p0, v6

    and-long/2addr v4, v7

    long-to-int v4, v4

    and-long/2addr v2, v7

    long-to-int v2, v2

    sub-int/2addr v4, v2

    int-to-float v2, v4

    div-float/2addr v2, v6

    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    const/4 v3, 0x1

    int-to-float v3, v3

    const/high16 v4, -0x40800000    # -1.0f

    add-float v5, v3, v4

    mul-float/2addr v5, p0

    add-float/2addr v3, v4

    mul-float/2addr v3, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-long v3, p0

    shl-long/2addr v3, v1

    int-to-long v1, v2

    and-long/2addr v1, v7

    or-long/2addr v1, v3

    invoke-static {p1, v0, v1, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place-70tqf50$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
