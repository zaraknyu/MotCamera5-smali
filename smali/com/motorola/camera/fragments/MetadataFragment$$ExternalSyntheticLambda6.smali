.class public final synthetic Lcom/motorola/camera/fragments/MetadataFragment$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/fragments/MetadataFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fragments/MetadataFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fragments/MetadataFragment$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/fragments/MetadataFragment;

    return-void
.end method


# virtual methods
.method public final onGroupExpand(I)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/fragments/MetadataFragment$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/fragments/MetadataFragment;

    iget-object v0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->expandableListAdapter:Lcom/motorola/camera/fragments/MetadataFragment$CustomizedExpandableListAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/fragments/MetadataFragment;->expandableListAdapter:Lcom/motorola/camera/fragments/MetadataFragment$CustomizedExpandableListAdapter;

    iget-object v1, v1, Lcom/motorola/camera/fragments/MetadataFragment$CustomizedExpandableListAdapter;->expandableTitleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    if-eq v0, p1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/fragments/MetadataFragment;->expandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
