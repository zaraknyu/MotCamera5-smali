.class public final Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;

.field public static final INSTANCE$1:Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;

.field public static final INSTANCE$2:Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;

.field public static final INSTANCE$3:Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;

.field public static final INSTANCE$4:Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;

.field public static final INSTANCE$5:Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;

.field public static final INSTANCE$6:Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;-><init>(II)V

    sput-object v0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;->INSTANCE:Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;

    new-instance v0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;-><init>(II)V

    sput-object v0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;->INSTANCE$1:Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;

    new-instance v0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;-><init>(II)V

    sput-object v0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;->INSTANCE$2:Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;

    new-instance v0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;-><init>(II)V

    sput-object v0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;->INSTANCE$3:Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;

    new-instance v0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;-><init>(II)V

    sput-object v0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;->INSTANCE$4:Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;

    new-instance v0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;-><init>(II)V

    sput-object v0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;->INSTANCE$5:Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;

    new-instance v0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;-><init>(II)V

    sput-object v0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;->INSTANCE$6:Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;->$r8$classId:I

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    check-cast p2, Landroidx/compose/ui/unit/LayoutDirection;

    invoke-static {p1}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->access$requireViewFactoryHolder(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutDirection(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    check-cast p2, Landroidx/savedstate/SavedStateRegistryOwner;

    invoke-static {p1}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->access$requireViewFactoryHolder(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->setSavedStateRegistryOwner(Landroidx/savedstate/SavedStateRegistryOwner;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    check-cast p2, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->access$requireViewFactoryHolder(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    check-cast p2, Landroidx/compose/ui/unit/Density;

    invoke-static {p1}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->access$requireViewFactoryHolder(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->setDensity(Landroidx/compose/ui/unit/Density;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    check-cast p2, Landroidx/compose/ui/Modifier;

    invoke-static {p1}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->access$requireViewFactoryHolder(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->setModifier(Landroidx/compose/ui/Modifier;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->access$requireViewFactoryHolder(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->setReleaseBlock(Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->access$requireViewFactoryHolder(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->setUpdateBlock(Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
