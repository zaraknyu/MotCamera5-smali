.class public final synthetic Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;II)V
    .locals 0

    iput p4, p0, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/Modifier;

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, p0, p1, p2}, La/l;->StorageFullPill(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/Modifier;

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, p0, p1, p2}, La/l;->StorageFull(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
