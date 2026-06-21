.class public final Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $isVertical:Z

.field public final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic $state:Landroidx/compose/foundation/pager/PagerState;


# direct methods
.method public constructor <init>(ZLandroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;->$isVertical:Z

    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    iput-object p3, p0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iget-boolean v0, p0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;->$isVertical:Z

    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;I)V

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsActions;->PageUp:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v4, Landroidx/compose/ui/semantics/AccessibilityAction;

    invoke-direct {v4, v2, v0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-virtual {p1, v3, v4}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    new-instance v0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1$1;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v3}, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;I)V

    sget-object p0, Landroidx/compose/ui/semantics/SemanticsActions;->PageDown:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    invoke-direct {v1, v2, v0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-virtual {p1, p0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1$1;

    const/4 v3, 0x2

    invoke-direct {v0, p0, v1, v3}, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;I)V

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsActions;->PageLeft:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v4, Landroidx/compose/ui/semantics/AccessibilityAction;

    invoke-direct {v4, v2, v0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-virtual {p1, v3, v4}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    new-instance v0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1$1;

    const/4 v3, 0x3

    invoke-direct {v0, p0, v1, v3}, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;I)V

    sget-object p0, Landroidx/compose/ui/semantics/SemanticsActions;->PageRight:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    invoke-direct {v1, v2, v0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-virtual {p1, p0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
