.class public abstract Landroidx/compose/foundation/layout/ColumnKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DefaultColumnMeasurePolicy:Landroidx/compose/foundation/layout/ColumnMeasurePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->Top:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;-><init>(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;)V

    sput-object v0, Landroidx/compose/foundation/layout/ColumnKt;->DefaultColumnMeasurePolicy:Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    return-void
.end method

.method public static final columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;
    .locals 5

    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->Top:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-virtual {p1, v0}, Landroidx/compose/ui/BiasAlignment$Horizontal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x14a0e7e8

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object p0, Landroidx/compose/foundation/layout/ColumnKt;->DefaultColumnMeasurePolicy:Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    return-object p0

    :cond_0
    const v0, 0x14a1ba3f

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v0, p3, 0xe

    xor-int/lit8 v0, v0, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-le v0, v3, :cond_1

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    and-int/lit8 v0, p3, 0x6

    if-ne v0, v3, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    and-int/lit8 v3, p3, 0x70

    xor-int/lit8 v3, v3, 0x30

    const/16 v4, 0x20

    if-le v3, v4, :cond_4

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    and-int/lit8 p3, p3, 0x30

    if-ne p3, v4, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    :cond_6
    :goto_1
    or-int p3, v0, v2

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p3, :cond_7

    sget-object p3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v0, p3, :cond_8

    :cond_7
    new-instance v0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;-><init>(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;)V

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_8
    check-cast v0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v0
.end method
