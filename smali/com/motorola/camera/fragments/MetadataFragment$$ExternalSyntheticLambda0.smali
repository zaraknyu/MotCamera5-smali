.class public final synthetic Lcom/motorola/camera/fragments/MetadataFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/fragments/MetadataFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fragments/MetadataFragment;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/fragments/MetadataFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/fragments/MetadataFragment$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fragments/MetadataFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lcom/motorola/camera/fragments/MetadataFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/fragments/MetadataFragment$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fragments/MetadataFragment;

    iget-object p1, p0, Lcom/motorola/camera/fragments/MetadataFragment;->titleText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftBitmap3:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftBitmap3:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "thumbnail w:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " h:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/motorola/camera/fragments/MetadataFragment;->rightImage:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftBitmap3:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/fragments/MetadataFragment$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fragments/MetadataFragment;

    iget-object p1, p0, Lcom/motorola/camera/fragments/MetadataFragment;->titleText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftBitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftBitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gainmap w:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " h:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/motorola/camera/fragments/MetadataFragment;->rightImage:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftBitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/fragments/MetadataFragment$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fragments/MetadataFragment;

    iget-object p1, p0, Lcom/motorola/camera/fragments/MetadataFragment;->titleText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "primary w:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " h:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/motorola/camera/fragments/MetadataFragment;->rightImage:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/fragments/MetadataFragment$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fragments/MetadataFragment;

    iget-object p0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->pickMedia:Landroidx/activity/result/ActivityResultLauncher;

    invoke-static {}, Landroid/provider/MediaStore;->getPickImagesMaxLimit()I

    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$SingleMimeType;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/activity/result/PickVisualMediaRequest;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;

    iput-object v1, v0, Landroidx/activity/result/PickVisualMediaRequest;->mediaType:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;

    invoke-static {}, Landroid/provider/MediaStore;->getPickImagesMaxLimit()I

    iput-object p1, v0, Landroidx/activity/result/PickVisualMediaRequest;->mediaType:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;

    invoke-virtual {p0, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/fragments/MetadataFragment$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fragments/MetadataFragment;

    iget p1, p0, Lcom/motorola/camera/fragments/MetadataFragment;->scale:F

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/fragments/MetadataFragment;->scale:F

    iget-object v0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/motorola/camera/fragments/MetadataFragment;->rightImage:Landroid/widget/ImageView;

    iget p0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->scale:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
