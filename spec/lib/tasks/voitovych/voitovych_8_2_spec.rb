describe "#circle_area " do
    it "calculates the area of that circle " do   
      expect(circle_area(Circle.new(Point.new(10, 10), 30)).round(6)).to eq(2827.433388)
    end
    it "calculates the area of that circle " do   
      expect(circle_area(Circle.new(Point.new(25, -70), 30)).round(6)).to eq(2827.433388)
    end
end