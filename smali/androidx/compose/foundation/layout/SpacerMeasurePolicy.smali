.class public final Landroidx/compose/foundation/layout/SpacerMeasurePolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/layout/SpacerMeasurePolicy;

.field public static final INSTANCE$1:Landroidx/compose/foundation/layout/SpacerMeasurePolicy;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/layout/SpacerMeasurePolicy;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/compose/foundation/layout/SpacerMeasurePolicy;-><init>(I)V

    sput-object v0, Landroidx/compose/foundation/layout/SpacerMeasurePolicy;->INSTANCE$1:Landroidx/compose/foundation/layout/SpacerMeasurePolicy;

    new-instance v0, Landroidx/compose/foundation/layout/SpacerMeasurePolicy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/layout/SpacerMeasurePolicy;-><init>(I)V

    sput-object v0, Landroidx/compose/foundation/layout/SpacerMeasurePolicy;->INSTANCE:Landroidx/compose/foundation/layout/SpacerMeasurePolicy;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/SpacerMeasurePolicy;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 1

    iget p0, p0, Landroidx/compose/foundation/layout/SpacerMeasurePolicy;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result p0

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result p2

    sget-object p3, Landroidx/compose/foundation/layout/BoxMeasurePolicy$measure$1;->INSTANCE$1:Landroidx/compose/foundation/layout/BoxMeasurePolicy$measure$1;

    sget-object p4, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    invoke-interface {p1, p0, p2, p4, p3}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getHasFixedWidth-impl(J)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, p2

    :goto_0
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getHasFixedHeight-impl(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p2

    :cond_1
    sget-object p3, Landroidx/compose/foundation/layout/BoxMeasurePolicy$measure$1;->INSTANCE$3:Landroidx/compose/foundation/layout/BoxMeasurePolicy$measure$1;

    sget-object p4, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    invoke-interface {p1, p0, p2, p4, p3}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
