.class public final Landroidx/compose/foundation/lazy/grid/LazyGridInterval;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;


# instance fields
.field public final item:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final span:Lkotlin/jvm/functions/Function2;

.field public final type:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$7;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$7;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridInterval;->span:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridInterval;->type:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$7;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridInterval;->item:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    return-void
.end method


# virtual methods
.method public final getKey()Lkotlin/jvm/functions/Function1;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getType()Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridInterval;->type:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$7;

    return-object p0
.end method
