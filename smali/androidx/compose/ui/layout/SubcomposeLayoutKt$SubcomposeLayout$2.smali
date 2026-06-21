.class public final Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $$changed:I

.field public final synthetic $measurePolicy:Lkotlin/jvm/functions/Function2;

.field public final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;II)V
    .locals 0

    iput p4, p0, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$2;->$measurePolicy:Lkotlin/jvm/functions/Function2;

    iput p3, p0, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$2;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$2;->$r8$classId:I

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    packed-switch v0, :pswitch_data_0

    iget p2, p0, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$2;->$$changed:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    iget-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object p0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$2;->$measurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p0, p1, p2}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->access$DialogLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget p2, p0, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$2;->$$changed:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    iget-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object p0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$2;->$measurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p0, p1, p2}, Landroidx/compose/ui/layout/ScaleFactorKt;->SubcomposeLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
