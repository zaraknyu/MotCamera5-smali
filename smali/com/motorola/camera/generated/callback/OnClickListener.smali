.class public final Lcom/motorola/camera/generated/callback/OnClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final mListener:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

.field public final mSourceId:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/generated/callback/OnClickListener$Listener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    iput-object p1, p0, Lcom/motorola/camera/generated/callback/OnClickListener;->mListener:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    iput p2, p0, Lcom/motorola/camera/generated/callback/OnClickListener;->mSourceId:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/motorola/camera/generated/callback/OnClickListener;->mListener:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    iget p0, p0, Lcom/motorola/camera/generated/callback/OnClickListener;->mSourceId:I

    invoke-interface {p1, p0}, Lcom/motorola/camera/generated/callback/OnClickListener$Listener;->_internalCallbackOnClick(I)V

    return-void
.end method
