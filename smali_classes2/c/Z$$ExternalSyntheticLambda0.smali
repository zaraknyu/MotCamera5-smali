.class public final synthetic Lc/Z$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    iput p5, p0, Lc/Z$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lc/Z$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lc/Z$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lc/Z$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput p4, p0, Lc/Z$$ExternalSyntheticLambda0;->f$4:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lc/Z$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lc/Z$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lc/Z$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lc/Z$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lc/Z$$ExternalSyntheticLambda0;->f$4:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p0

    invoke-static {v0, v1, v2, p1, p0}, La/l;->CropEditDialog(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lc/Z$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lc/Z;

    iget-object v1, p0, Lc/Z$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Lc/X;

    iget-object v2, p0, Lc/Z$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/Modifier;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lc/Z$$ExternalSyntheticLambda0;->f$4:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p0

    invoke-virtual {v0, v1, v2, p1, p0}, Lc/Z;->a(Lc/X;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
