.class public final Landroidx/compose/material3/ProgressIndicatorKt$IncreaseSemanticsBounds$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/ProgressIndicatorKt$IncreaseSemanticsBounds$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/ProgressIndicatorKt$IncreaseSemanticsBounds$1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    sput-object v0, Landroidx/compose/material3/ProgressIndicatorKt$IncreaseSemanticsBounds$1;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorKt$IncreaseSemanticsBounds$1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroidx/compose/ui/layout/MeasureScope;

    check-cast p2, Landroidx/compose/ui/layout/Measurable;

    check-cast p3, Landroidx/compose/ui/unit/Constraints;

    iget-wide v0, p3, Landroidx/compose/ui/unit/Constraints;->value:J

    sget p0, Landroidx/compose/material3/ProgressIndicatorKt;->SemanticsBoundsPadding:F

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    mul-int/lit8 p3, p0, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p3}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    iget v0, p2, Landroidx/compose/ui/layout/Placeable;->height:I

    sub-int/2addr v0, p3

    iget p3, p2, Landroidx/compose/ui/layout/Placeable;->width:I

    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotStateList$addAll$1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, p2}, Landroidx/compose/runtime/snapshots/SnapshotStateList$addAll$1;-><init>(IILjava/lang/Object;)V

    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    invoke-interface {p1, p3, v0, p0, v1}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method
