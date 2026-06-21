.class public final synthetic Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p3, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput p1, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda2;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    iget p0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda2;->f$1:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->LastPageSwipeDetector(ILandroidx/compose/runtime/ComposerImpl;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/cli/content/CliContentViewModel;

    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    move-object v5, p2

    check-cast v5, Lcom/motorola/camera/cli/CliEventListener;

    const-string p1, "context"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "eventListener"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    iget-object p1, v0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliDisplay$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "getValue(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p1

    check-cast v3, Landroid/view/Display;

    new-instance v6, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    const/16 p1, 0xc

    invoke-direct {v6, p1, v0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iget v4, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda2;->f$1:I

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/cli/content/presentation/CliPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;ILcom/motorola/camera/cli/CliEventListener;Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;)V

    iput-object v1, v0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/motorola/camera/cli/content/CliContentViewModel;->presentationOpening:Z

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
