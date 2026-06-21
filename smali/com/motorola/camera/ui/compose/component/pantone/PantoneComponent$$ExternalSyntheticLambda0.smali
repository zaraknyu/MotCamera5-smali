.class public final synthetic Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent;II)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    iget-object p0, p0, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent;

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent;->PantoneIcon(ILandroidx/compose/runtime/ComposerImpl;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    iget-object p0, p0, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent;

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent;->Draw(ILandroidx/compose/runtime/ComposerImpl;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
