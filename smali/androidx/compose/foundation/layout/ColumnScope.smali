.class public interface abstract Landroidx/compose/foundation/layout/ColumnScope;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static weight$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    float-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "invalid weight; must be greater than zero"

    invoke-static {v1}, Landroidx/compose/foundation/layout/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_0
    new-instance v1, Landroidx/compose/foundation/layout/LayoutWeightElement;

    invoke-direct {v1, v0}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(F)V

    invoke-interface {p0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
