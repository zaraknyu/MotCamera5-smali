.class public final synthetic Lcom/motorola/camera/adobe_scan/ui/compose/dialogs/DownloadAdobeDialogKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/adobe_scan/ui/compose/dialogs/DownloadAdobeDialogKt$$ExternalSyntheticLambda2;->f$0:Z

    iput-object p2, p0, Lcom/motorola/camera/adobe_scan/ui/compose/dialogs/DownloadAdobeDialogKt$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/motorola/camera/adobe_scan/ui/compose/dialogs/DownloadAdobeDialogKt$$ExternalSyntheticLambda2;->f$2:Lkotlin/jvm/functions/Function0;

    iput p4, p0, Lcom/motorola/camera/adobe_scan/ui/compose/dialogs/DownloadAdobeDialogKt$$ExternalSyntheticLambda2;->f$3:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p0, Lcom/motorola/camera/adobe_scan/ui/compose/dialogs/DownloadAdobeDialogKt$$ExternalSyntheticLambda2;->f$3:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    iget-boolean v0, p0, Lcom/motorola/camera/adobe_scan/ui/compose/dialogs/DownloadAdobeDialogKt$$ExternalSyntheticLambda2;->f$0:Z

    iget-object v1, p0, Lcom/motorola/camera/adobe_scan/ui/compose/dialogs/DownloadAdobeDialogKt$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/ui/compose/dialogs/DownloadAdobeDialogKt$$ExternalSyntheticLambda2;->f$2:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, p0, p1, p2}, La/l;->DownloadAdobeDialog(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
