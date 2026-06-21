.class public final synthetic Le/T$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Le/T$$ExternalSyntheticLambda0;->$r8$classId:I

    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/T$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput p2, p0, Le/T$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;I)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Le/T$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/T$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput p2, p0, Le/T$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Le/T$$ExternalSyntheticLambda0;->$r8$classId:I

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v2, p0, Le/T$$ExternalSyntheticLambda0;->f$2:I

    iget-object p0, p0, Le/T$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/compose/ui/Modifier;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p2, v2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-static {p0, p1, p2}, La/l;->LoadingSavedSessionDialog(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    return-object v1

    :pswitch_0
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    check-cast p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p2, v2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-static {p0, p1, p2}, La/l;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
