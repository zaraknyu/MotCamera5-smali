.class public final Lcom/motorola/camera/fragments/MetadataFragment$CustomizedExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SourceFile"


# instance fields
.field public final context:Landroid/content/Context;

.field public final expandableDetailList:Ljava/util/HashMap;

.field public final expandableTitleList:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fragments/MetadataFragment$CustomizedExpandableListAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/motorola/camera/fragments/MetadataFragment$CustomizedExpandableListAdapter;->expandableTitleList:Ljava/util/List;

    iput-object p3, p0, Lcom/motorola/camera/fragments/MetadataFragment$CustomizedExpandableListAdapter;->expandableDetailList:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final getChild(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/fragments/MetadataFragment$CustomizedExpandableListAdapter;->expandableTitleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/fragments/MetadataFragment$CustomizedExpandableListAdapter;->expandableDetailList:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getChildId(II)J
    .locals 0

    int-to-long p0, p2

    return-wide p0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fragments/MetadataFragment$CustomizedExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    const-string p1, "html"

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string/jumbo p3, "text"

    if-eqz p2, :cond_0

    move-object p5, p1

    goto :goto_0

    :cond_0
    move-object p5, p3

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_3

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/fragments/MetadataFragment$CustomizedExpandableListAdapter;->context:Landroid/content/Context;

    const-string p4, "layout_inflater"

    invoke-virtual {p0, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    const/4 p4, 0x0

    if-eqz p2, :cond_2

    const p3, 0x7f0d007e

    invoke-virtual {p0, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const p1, 0x7f0d007d

    invoke-virtual {p0, p1, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    if-eqz p2, :cond_5

    const p0, 0x7f0a01a9

    invoke-virtual {p4, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/webkit/WebView;

    const-string/jumbo p0, "xmp"

    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v5, 0x0

    const-string v1, ""

    const-string/jumbo v3, "text/xml"

    const-string/jumbo v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p4

    :cond_4
    const-string/jumbo p0, "text/html"

    const-string p1, "UTF-8"

    invoke-virtual {v0, v2, p0, p1}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p4

    :cond_5
    const p0, 0x7f0a01a8

    invoke-virtual {p4, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p4
.end method

.method public final getChildrenCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/fragments/MetadataFragment$CustomizedExpandableListAdapter;->expandableTitleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/fragments/MetadataFragment$CustomizedExpandableListAdapter;->expandableDetailList:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fragments/MetadataFragment$CustomizedExpandableListAdapter;->expandableTitleList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getGroupCount()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fragments/MetadataFragment$CustomizedExpandableListAdapter;->expandableTitleList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getGroupId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    iget-object p2, p0, Lcom/motorola/camera/fragments/MetadataFragment$CustomizedExpandableListAdapter;->expandableTitleList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 p2, 0x0

    if-nez p3, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/fragments/MetadataFragment$CustomizedExpandableListAdapter;->context:Landroid/content/Context;

    const-string p3, "layout_inflater"

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    const p3, 0x7f0d007c

    invoke-virtual {p0, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    :cond_0
    const p0, 0x7f0a028d

    invoke-virtual {p3, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 p4, 0x1

    invoke-virtual {p0, p2, p4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method

.method public final hasStableIds()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isChildSelectable(II)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
