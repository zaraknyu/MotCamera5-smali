.class public final synthetic Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p3, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput p1, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda1;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/cli/content/CliPresentationHolder;

    iget p0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda1;->f$1:I

    iput p0, v0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->orientation:I

    invoke-static {v0, p0}, Lcom/motorola/camera/cli/content/CliPresentationHolder;->access$changeOrientation(Lcom/motorola/camera/cli/content/CliPresentationHolder;I)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    iget p0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda1;->f$1:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v1}, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->hideContent(IZZ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
