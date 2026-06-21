.class public final Landroidx/compose/ui/input/pointer/PointerInteropFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/Modifier$Element;


# instance fields
.field public disallowIntercept:Z

.field public onTouchEvent:Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;

.field public final pointerInputFilter:Landroidx/core/view/MenuHostHelper;

.field public requestDisallowInterceptTouchEvent:Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/core/view/MenuHostHelper;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    sget-object v1, Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;->Unknown:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    iput-object v1, v0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->pointerInputFilter:Landroidx/core/view/MenuHostHelper;

    return-void
.end method


# virtual methods
.method public final getOnTouchEvent()Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->onTouchEvent:Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "onTouchEvent"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
