.class public final synthetic Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$LabelComposer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/mcf/McfMetadataModificationCallable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$$ExternalSyntheticLambda0;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$$ExternalSyntheticLambda0;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$LabelComposer$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$LabelComposer$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final modifyMetadata([BII)[B
    .locals 1

    iget v0, p0, Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$LabelComposer$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$LabelComposer$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$$ExternalSyntheticLambda0;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p2, p3, p1}, Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$$ExternalSyntheticLambda0;->save(II[B)[B

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p2, p3, p1}, Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$$ExternalSyntheticLambda0;->save(II[B)[B

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p2, p3, p1}, Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$$ExternalSyntheticLambda0;->save(II[B)[B

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
