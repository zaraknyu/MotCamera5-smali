.class public Lcom/motorola/camera/fragments/MetadataFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field public expandableDetailList:Ljava/util/LinkedHashMap;

.field public expandableListAdapter:Lcom/motorola/camera/fragments/MetadataFragment$CustomizedExpandableListAdapter;

.field public expandableListView:Landroid/widget/ExpandableListView;

.field public expandableTitleList:Ljava/util/ArrayList;

.field public leftBitmap1:Landroid/graphics/Bitmap;

.field public leftBitmap2:Landroid/graphics/Bitmap;

.field public leftBitmap3:Landroid/graphics/Bitmap;

.field public leftImage1:Landroid/widget/ImageView;

.field public leftImage2:Landroid/widget/ImageView;

.field public leftImage3:Landroid/widget/ImageView;

.field public pickMedia:Landroidx/activity/result/ActivityResultLauncher;

.field public rightImage:Landroid/widget/ImageView;

.field public scale:F

.field public titleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->scale:F

    return-void
.end method


# virtual methods
.method public final initMarker(Ljava/util/ArrayList;)V
    .locals 5

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadataUtil$Section;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v2, Lcom/motorola/camera/photometadata/PhotoMetadataUtil$Section;->xml:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v2, Lcom/motorola/camera/photometadata/PhotoMetadataUtil$Section;->xml:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v4, v2, Lcom/motorola/camera/photometadata/PhotoMetadataUtil$Section;->marker:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v2, v2, Lcom/motorola/camera/photometadata/PhotoMetadataUtil$Section;->marker:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->expandableDetailList:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->expandableDetailList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/motorola/camera/fragments/MetadataFragment;->expandableTitleList:Ljava/util/ArrayList;

    new-instance p1, Lcom/motorola/camera/fragments/MetadataFragment$CustomizedExpandableListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/fragments/MetadataFragment;->expandableTitleList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/motorola/camera/fragments/MetadataFragment;->expandableDetailList:Ljava/util/LinkedHashMap;

    invoke-direct {p1, v0, v1, v2}, Lcom/motorola/camera/fragments/MetadataFragment$CustomizedExpandableListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V

    iput-object p1, p0, Lcom/motorola/camera/fragments/MetadataFragment;->expandableListAdapter:Lcom/motorola/camera/fragments/MetadataFragment$CustomizedExpandableListAdapter;

    iget-object v0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->expandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object p1, p0, Lcom/motorola/camera/fragments/MetadataFragment;->expandableListView:Landroid/widget/ExpandableListView;

    new-instance v0, Lcom/motorola/camera/fragments/MetadataFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fragments/MetadataFragment$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/fragments/MetadataFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    iget-object p1, p0, Lcom/motorola/camera/fragments/MetadataFragment;->expandableListView:Landroid/widget/ExpandableListView;

    new-instance v0, Lcom/motorola/camera/fragments/MetadataFragment$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    iget-object p0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->expandableListView:Landroid/widget/ExpandableListView;

    new-instance p1, Lcom/motorola/camera/fragments/MetadataFragment$$ExternalSyntheticLambda8;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d007f

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a047e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/motorola/camera/fragments/MetadataFragment;->titleText:Landroid/widget/TextView;

    const p2, 0x7f0a027f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftImage1:Landroid/widget/ImageView;

    const p2, 0x7f0a0280

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftImage2:Landroid/widget/ImageView;

    const p2, 0x7f0a0281

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftImage3:Landroid/widget/ImageView;

    const p2, 0x7f0a039b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/motorola/camera/fragments/MetadataFragment;->rightImage:Landroid/widget/ImageView;

    const p2, 0x7f0a02a6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ExpandableListView;

    iput-object p2, p0, Lcom/motorola/camera/fragments/MetadataFragment;->expandableListView:Landroid/widget/ExpandableListView;

    const p2, 0x7f0a03ad

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/motorola/camera/fragments/MetadataFragment$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, v0}, Lcom/motorola/camera/fragments/MetadataFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fragments/MetadataFragment;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a03e6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/motorola/camera/fragments/MetadataFragment$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p3, p0, v0}, Lcom/motorola/camera/fragments/MetadataFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fragments/MetadataFragment;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    new-instance p3, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    const/16 v0, 0x18

    invoke-direct {p3, v0, p0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/fragments/MetadataFragment;->pickMedia:Landroidx/activity/result/ActivityResultLauncher;

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/fragments/MetadataFragment;->release()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final release()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftImage1:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftImage2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftImage3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftBitmap1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftBitmap2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftBitmap3:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iput-object v1, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftBitmap1:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftBitmap2:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/motorola/camera/fragments/MetadataFragment;->leftBitmap3:Landroid/graphics/Bitmap;

    return-void
.end method
