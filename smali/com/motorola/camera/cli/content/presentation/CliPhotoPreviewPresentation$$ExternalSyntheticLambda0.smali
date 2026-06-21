.class public final synthetic Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->removeSelf:Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda1;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda1;->invoke()Ljava/lang/Object;

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->removeSelf:Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda1;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda1;->invoke()Ljava/lang/Object;

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
